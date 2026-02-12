import Video from "next-video";

export default function VideoComponent() {
  return (
    <div className="rounded-[15%]">
      {" "}
      <Video
        playbackId="xdykrfJPbk7GKrXIQKreMCfWJpkZWtYBSqtm3bwiZdc"
        autoplay
        muted
      />
    </div>
  );
}
