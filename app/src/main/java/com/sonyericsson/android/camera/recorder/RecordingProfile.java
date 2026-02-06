package com.sonyericsson.android.camera.recorder;

import android.media.CamcorderProfile;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;

public class RecordingProfile {
    public static final int MIN_RECORDING_DURATION = 1;
    public static final int QUALITY_4K_UHD_30FPS = 100;
    public static final int VIDEO_AUDIO_BIT_RATE = 128000;
    public static final int VIDEO_AUDIO_BIT_RATE_AAC = 156000;
    public static final int VIDEO_AUDIO_BIT_RATE_AMR_NB = 12200;
    public static final int VIDEO_AUDIO_BIT_RATE_MMS = 5000;
    public static final int VIDEO_AUDIO_CHANNEL_MONO = 1;
    public static final int VIDEO_AUDIO_CHANNEL_STEREO = 2;
    public static final int VIDEO_AUDIO_SAMPLE_RATE = 48000;
    public static final int VIDEO_AUDIO_SAMPLE_RATE_MMS = 8000;
    public static final int VIDEO_BIT_RATE_4K_UHD_AVC_30FPS = 55000000;
    public static final int VIDEO_BIT_RATE_4K_UHD_HEVC_30FPS = 35000000;
    public static final int VIDEO_BIT_RATE_FULL_HD = 17500000;
    public static final int VIDEO_BIT_RATE_FULL_HD_60FPS = 30000000;
    public static final int VIDEO_BIT_RATE_HD = 12000000;
    public static final int VIDEO_BIT_RATE_HD_120FPS = 50000000;
    public static final int VIDEO_BIT_RATE_LOW = 210000;
    public static final int VIDEO_BIT_RATE_VGA = 3555555;
    public static final int VIDEO_FRAME_RATE_24FPS = 24;
    public static final int VIDEO_FRAME_RATE_30FPS = 30;
    public static final int VIDEO_FRAME_RATE_60FPS = 60;
    public static final int VIDEO_FRAME_RATE_HD_120FPS = 120;
    public static final int VIDEO_FRAME_RATE_MMS = 15;
    public final long averageFileSize;
    public final CamcorderProfile camcorderProfile;
    public final RecorderParameters$DataSpace dataSpace;
    public final String extension;
    public final boolean isMms;
    public final String mimeType;
    public final long minFileSize;
    public final int progressInterval;

    /* synthetic */ RecordingProfile(CamcorderProfile camcorderProfile, String str, String str2, long j, long j2, int i, RecorderParameters$DataSpace recorderParameters$DataSpace, boolean z, RecordingProfile$1 recordingProfile$1) {
        this(camcorderProfile, str, str2, j, j2, i, recorderParameters$DataSpace, z);
    }

    static /* synthetic */ int access$000(VideoSize videoSize, boolean z) {
        return decideQuality(videoSize, z);
    }

    static /* synthetic */ int access$100(VideoSize videoSize) {
        return decideDefaultQuality(videoSize);
    }

    static /* synthetic */ int access$200(CamcorderProfile camcorderProfile, int i) {
        return getAudioBitRate(camcorderProfile, i);
    }

    static /* synthetic */ long access$300(long j, long j2, long j3) {
        return computeSize(j, j2, j3);
    }

    static /* synthetic */ int access$500(VideoSize videoSize, VideoHdr videoHdr) {
        return decideFrameRate(videoSize, videoHdr);
    }

    private RecordingProfile(CamcorderProfile camcorderProfile, String str, String str2, long j, long j2, int i, RecorderParameters$DataSpace recorderParameters$DataSpace, boolean z) {
        this.camcorderProfile = camcorderProfile;
        this.extension = str;
        this.mimeType = str2;
        this.averageFileSize = j;
        this.minFileSize = j2;
        this.progressInterval = i;
        this.dataSpace = recorderParameters$DataSpace;
        this.isMms = z;
    }

    public CamcorderProfile getCamcorderProfile() {
        return this.camcorderProfile;
    }

    public String getExtension() {
        return this.extension;
    }

    public String getMime() {
        return this.mimeType;
    }

    public int getProgressInterval() {
        return this.progressInterval;
    }

    public static int getVideoFrameRate(VideoSize videoSize, VideoHdr videoHdr) {
        return decideFrameRate(videoSize, videoHdr);
    }

    private static long computeSize(long j, long j2, long j3) {
        return (((j + j2) * j3) / 8) / 1024;
    }

    private static int getAudioBitRate(CamcorderProfile camcorderProfile, int i) {
        if (camcorderProfile != null) {
            return camcorderProfile.audioBitRate;
        }
        return i == 0 ? 5000 : 128000;
    }

    private static int decideFrameRate(VideoSize videoSize, VideoHdr videoHdr) {
        if (videoSize == null) {
            throw new IllegalStateException("Don't set parameters.");
        }
        switch (RecordingProfile$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize[videoSize.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return videoHdr == VideoHdr.HDR_ON ? 24 : 30;
            case 4:
                return 60;
            case 5:
            case 7:
                return 30;
            case 6:
                return 120;
            case 8:
                return 15;
            default:
                throw new IllegalStateException("Don't set parameters.");
        }
    }

    private static int decideQuality(VideoSize videoSize, boolean z) {
        int i;
        if (videoSize == null) {
            throw new IllegalStateException("Don't set parameters.");
        }
        switch (RecordingProfile$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize[videoSize.ordinal()]) {
            case 1:
            case 2:
                i = 100;
                break;
            case 3:
            case 4:
                i = 6;
                break;
            case 5:
            case 6:
                i = 5;
                break;
            case 7:
                i = 4;
                break;
            case 8:
                i = !z ? 0 : 2;
                break;
            default:
                throw new IllegalStateException("Don't set parameters.");
        }
        return CamcorderProfile.hasProfile(i) ? i : decideDefaultQuality(videoSize);
    }

    private static int decideDefaultQuality(VideoSize videoSize) {
        return videoSize != VideoSize.MMS ? 1 : 0;
    }
}
