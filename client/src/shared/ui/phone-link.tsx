
type PhoneLinkPropsType = {
    number: string;
    className?: string;
};

const PhoneLink = ({className, number }:PhoneLinkPropsType) => {
    const tel = number.replace(/\s+/g, '');
    return <a href={`tel:${tel}`}>{number}</a>;
};

export default PhoneLink;