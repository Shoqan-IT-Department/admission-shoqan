
import {ADM_URL} from "@/config/instance";
import {ENDPOINTS} from "@/config/endpoints";
import {Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle} from "@/shared/ui/card";
import {SyncLoader} from "react-spinners";

import {PATHS} from "@/config/paths";
import {Link} from "@/i18n/navigation";

type StaticArticleType = {
    id: number;
    title: string;
    description: string;
    published: Date;
    img: {
        url: string;
        name: string;
        caption: string;
        alternativeText: string;
        formats: {
            small: {
                url: string;
            };
        }
    };

};
type ArticleWithImage = StaticArticleType & {
    fullImageUrl?: string;
};

type Props = {
    locale: string;
};
type Article = {
    id: number;
    title: string;
    description: string;
    imageUrl: string | null;
    subtitle?: string;
    img?: {
        hash: string;
        ext: string;
    };
    fullImageUrl?: string;
};

// поправь путь если нужно
export async function getNewsArticle(locale: string = 'ru-RU'): Promise<ArticleWithImage[]> {
    const localesToTry = [locale, 'ru-RU'];

    for (const loc of localesToTry) {
        try {
            const res = await ADM_URL.get<{ data: StaticArticleType[] }>(
                `${ENDPOINTS.GET.NEWS_ARTICLE}&locale=${loc}`
            );

            const articles = res.data.data;

            if (articles.length > 0) {
                return articles.map((item) => ({
                    ...item,
                    fullImageUrl: item.img?.url
                        ? `${ADM_URL.defaults.baseURL}${item.img.url}`
                        : undefined,
                }));
            }
        } catch (err) {
            console.error(`Ошибка при получении статей (locale=${loc}):`, err);
        }
    }

    return [];
}





export const revalidate = 600;

export default async function NewsCard({ locale }: { locale: string }){
    const articles = await getNewsArticle(locale);

    if (!articles.length) {
        return <span className="pt-6 pb-6 flex justify-center items-center"><SyncLoader color="#1470B9FF" /></span>;
    }
    // const [articles, setArticles] = useState<Article[]>([]);
    // const [loading, setLoading] = useState(true);

    // useEffect(() => {
    //     ADM_URL.get(ENDPOINTS.GET.NEWS_ARTICLE)
    //         .then((res) => {
    //             // Конкатенация url для каждого изображения
    //             const mapped = res.data.data.map((item: any) => {
    //                 const fullImageUrl = item.img?.url
    //                     ? `${ADM_URL.defaults.baseURL}${item.img.url}`
    //                     : null;

    //                 return {
    //                     ...item,
    //                     fullImageUrl,
    //                 };
    //             });

    //             setArticles(mapped);
    //             setLoading(false);
    //         })
    //         .catch((err) => {
    //             console.error("Ошибка при получении статей:", err);
    //             setLoading(false);
    //         });
    // }, []);

    // if (loading) return <span className="pt-6 pb-6 flex justify-center items-center"><SyncLoader color="#1470B9FF" /></span>;

    return (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
            {articles.slice(0, 3).map((article) => (
                <div key={article.id}>
                    <Card className="flex flex-col rounded-4xl overflow-hidden h-full">
                        <Link href={PATHS.NEWS} className="flex flex-col">
                            {article.fullImageUrl && (
                                <CardContent className="p-4 pt-1 flex justify-center items-center">
                                    <img
                                        src={article.fullImageUrl}
                                        alt={article.title}
                                        className="w-full object-cover aspect-[16/9] rounded-3xl"
                                    />
                                </CardContent>
                            )}
                            <CardHeader className="px-4 pt-2">
                                <CardTitle className="text-foreground text-center text-base sm:text-lg">
                                    {article.title}
                                </CardTitle>
                                <CardDescription className="text-sm sm:text-base text-justify">
                                    {article.description
                                            .split(' ')
                                            .slice(0, 30)
                                            .join(' ') +
                                        (article.description.split(' ').length > 30 ? '...' : '')}
                                </CardDescription>
                            </CardHeader>
                            <CardFooter className="text-right text-text-background pt-2">
                                <p className="text-right leading-7 [&:not(:first-child)]:mt-6">
                                    {(() => {
                                        const date = new Date(article.published);
                                        const day = date.getDate();
                                        const month = date.getMonth();
                                        const year = date.getFullYear();
                                        const months = [
                                            'января', 'февраля', 'марта', 'апреля', 'мая', 'июня',
                                            'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря'
                                        ];
                                        return `${day} ${months[month]} ${year}`;
                                    })()}
                                </p>
                            </CardFooter>
                        </Link>
                    </Card>
                </div>
            ))}

        </div>

    );
};
