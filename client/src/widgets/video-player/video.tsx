import React, { useRef, useState } from "react";
import { Play, Pause } from "lucide-react";

type VideoProps = {
    width: string;
    height: string;
};

const Video = ({ width, height }: VideoProps) => {
    const videoRef = useRef<HTMLVideoElement | null>(null);
    const [isPlaying, setIsPlaying] = useState(false);

    const togglePlay = () => {
        if (!videoRef.current) return;

        if (videoRef.current.paused) {
            videoRef.current.play();
            setIsPlaying(true);
        } else {
            videoRef.current.pause();
            setIsPlaying(false);
        }
    };


    return (
        <div className="relative inline-block">
            <video
                ref={videoRef}
                width={width}
                height={height}
                preload="metadata"
                muted
                playsInline
                // poster="/videos/shoqanPoster.jpg" // Убедись, что постер — это изображение
                className="will-change-transform rounded-4xl"
            >
                <source src="/videos/shoqanVideo.mp4" type="video/mp4" />
                <p>Your browser does not support the video tag.</p>
            </video>

            {/* Кнопка управления */}
            <button
                onClick={togglePlay}
                className="absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2
                   bg-black/50 hover:bg-black/70 text-white p-4 rounded-full transition"
            >
                {isPlaying ? <Pause size={56} /> : <Play size={56} />}
            </button>
        </div>
    );
};

export default Video;
