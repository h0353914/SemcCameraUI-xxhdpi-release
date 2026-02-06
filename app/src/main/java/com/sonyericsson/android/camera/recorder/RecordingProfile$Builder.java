package com.sonyericsson.android.camera.recorder;

import android.graphics.Rect;
import android.media.CamcorderProfile;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;

public class RecordingProfile$Builder {
    private boolean mIsOneShot;
    private String mResultExt;
    private String mResultMimeType;
    private VideoHdr mVideoHdr;
    private VideoSize mVideoSize;

    public RecordingProfile$Builder videoSize(VideoSize videoSize) {
        this.mVideoSize = videoSize;
        return this;
    }

    public RecordingProfile$Builder videoHdr(VideoHdr videoHdr) {
        this.mVideoHdr = videoHdr;
        return this;
    }

    public RecordingProfile$Builder setOneShot(boolean z) {
        this.mIsOneShot = z;
        return this;
    }

    public RecordingProfile build() {
        int i;
        int i2;
        int i3;
        if (this.mVideoSize == VideoSize.FOUR_K_UHD_H264 && this.mVideoHdr == VideoHdr.HDR_ON) {
            this.mVideoSize = VideoSize.FOUR_K_UHD_H265;
        }
        int iAccess$000 = RecordingProfile.access$000(this.mVideoSize, this.mIsOneShot);
        CamcorderProfile camcorderProfile = CamcorderProfile.get(iAccess$000);
        if (camcorderProfile != null) {
            updateCamcorderProfile(camcorderProfile);
            if (!this.mIsOneShot) {
                setupOutputFormatWithQuality(iAccess$000);
            } else {
                this.mResultExt = ".mp4";
                this.mResultMimeType = "video/mp4";
            }
            int i4 = this.mVideoSize == VideoSize.MMS ? 100 : 1000;
            long jAccess$200 = RecordingProfile.access$200(camcorderProfile, RecordingProfile.access$100(this.mVideoSize));
            long jAccess$300 = RecordingProfile.access$300(jAccess$200, camcorderProfile.videoBitRate, 60L);
            long jAccess$3002 = RecordingProfile.access$300(jAccess$200, camcorderProfile.videoBitRate, 1L);
            if (this.mVideoHdr == VideoHdr.HDR_ON) {
                i = 6;
                i2 = 7;
                i3 = 2;
            } else {
                i = 0;
                i2 = 0;
                i3 = 0;
            }
            return new RecordingProfile(camcorderProfile, this.mResultExt, this.mResultMimeType, jAccess$300, jAccess$3002, i4, new RecorderParameters$DataSpace(i, i2, i3), this.mVideoSize == VideoSize.MMS, null);
        }
        throw new RuntimeException("Could not get profile. Because Camera.getNumberOfCameras() returns 0 or No CamcorderProfile that matches quality : " + iAccess$000);
    }

    private void setupOutputFormatWithQuality(int i) {
        if (i == 0 || i == 2) {
            this.mResultExt = ".3gp";
            this.mResultMimeType = "video/3gpp";
        } else {
            this.mResultExt = ".mp4";
            this.mResultMimeType = "video/mp4";
        }
    }

    private void updateCamcorderProfile(CamcorderProfile camcorderProfile) {
        if (camcorderProfile == null) {
            return;
        }
        camcorderProfile.videoFrameRate = RecordingProfile.access$500(this.mVideoSize, this.mVideoHdr);
        camcorderProfile.fileFormat = 2;
        camcorderProfile.videoCodec = 2;
        switch (RecordingProfile$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize[this.mVideoSize.ordinal()]) {
            case 1:
            case 2:
                if (this.mVideoSize == VideoSize.FOUR_K_UHD_H264) {
                    camcorderProfile.videoBitRate = 55000000;
                } else {
                    camcorderProfile.videoBitRate = 35000000;
                    camcorderProfile.videoCodec = 5;
                }
                camcorderProfile.audioCodec = 3;
                camcorderProfile.audioBitRate = 156000;
                camcorderProfile.audioSampleRate = 48000;
                camcorderProfile.audioChannels = 2;
                break;
            case 3:
            case 4:
                if (this.mVideoSize == VideoSize.FULL_HD_60FPS) {
                    camcorderProfile.videoBitRate = 30000000;
                } else {
                    camcorderProfile.videoBitRate = 17500000;
                    if (this.mVideoHdr == VideoHdr.HDR_ON) {
                        camcorderProfile.videoCodec = 5;
                    }
                }
                camcorderProfile.audioCodec = 3;
                camcorderProfile.audioBitRate = 156000;
                camcorderProfile.audioSampleRate = 48000;
                camcorderProfile.audioChannels = 2;
                break;
            case 5:
            case 6:
                if (this.mVideoSize == VideoSize.HD_120FPS) {
                    camcorderProfile.videoBitRate = 50000000;
                } else {
                    camcorderProfile.videoBitRate = 12000000;
                }
                camcorderProfile.audioCodec = 3;
                camcorderProfile.audioBitRate = 156000;
                camcorderProfile.audioSampleRate = 48000;
                camcorderProfile.audioChannels = 2;
                break;
            case 7:
                camcorderProfile.videoBitRate = 3555555;
                camcorderProfile.audioCodec = 3;
                camcorderProfile.audioBitRate = 156000;
                camcorderProfile.audioSampleRate = 48000;
                camcorderProfile.audioChannels = 2;
                break;
            case 8:
                camcorderProfile.videoBitRate = 210000;
                camcorderProfile.audioCodec = 1;
                camcorderProfile.audioBitRate = 12200;
                camcorderProfile.audioSampleRate = 8000;
                camcorderProfile.audioChannels = 1;
                break;
        }
        Rect videoRect = this.mVideoSize.getVideoRect();
        if (videoRect.width() == camcorderProfile.videoFrameWidth && videoRect.height() == camcorderProfile.videoFrameHeight) {
            return;
        }
        camcorderProfile.videoFrameWidth = videoRect.width();
        camcorderProfile.videoFrameHeight = videoRect.height();
    }
}
