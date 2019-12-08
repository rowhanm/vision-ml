% This demo shows how to easily look at ground-truth segmentations for a given video.

% Let's load the video of actor B playing jenga in the livingroom.
% getMetaBy() returns a struct that contains all possible meta information (including
% the ground-truth data) about the video. Check the getMetaBy() documentation for more.

for loc = {'OFFICE', 'COURTYARD', 'LIVINGROOM'}
	for act = {'CHESS','JENGA','PUZZLE','CARDS'}
		for v = {'B', 'S', 'T', 'H'}
			vid = getMetaBy('Location', loc{1}, 'Activity', act{1}, 'Viewer', v{1});
			num_frames = length(vid.labelled_frames);
			for i = 1:num_frames
				% hand_mask = getSegmentationMask(vid, i, 'all');
				img = showLabelsOnFrame(vid, i);
				imshow(img);
				% imwrite(img, vid.video_id)
				pause;
			end
		end
	end			
end







% Each video contains annotated frames. All we do here is display those frames, one after 
% the other, with hand segmentations annotated in different colors.

% open a new figure...
figure('name', vid.video_id);
disp('Press any key to go to the next frame.');

% loop over frames...
