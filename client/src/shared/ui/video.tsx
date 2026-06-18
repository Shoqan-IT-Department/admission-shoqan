"use client";

import MuxVideo from "@mux/mux-video-react";
import { useState } from "react";
import { SyncLoader } from "react-spinners";

export default function VideoComponent() {
  const [loading, setLoading] = useState(true);

  if (!setLoading) {
    return <SyncLoader color="#1470B9FF" />;
  }

  return (
    <div className="relative w-full overflow-hidden aspect-video">
      {loading && (
        <div className="absolute inset-0 flex items-center justify-center bg-gray-100">
          <div className="w-10 h-10 border-4 border-gray-300 border-t-blue-500 rounded-full animate-spin" />
        </div>
      )}
      <MuxVideo
        playbackId="ffaSBQyb7MCcZTW81zVDt7fCsEeBJzUW3fO8YApLrC8"
        autoPlay
        controls
        muted
        loop
        style={{
          width: "100%",
          opacity: loading ? 0 : 1,
          transition: "opacity 0.3s",
        }}
        onCanPlay={() => setLoading(false)}
      />
    </div>
  );
}
