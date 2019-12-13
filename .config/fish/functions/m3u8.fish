function m3u8
	streamlink "hlsvariant://$argv[1]" best --hls-segment-threads 10 -o $argv[2].mp4
end
