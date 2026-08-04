package com.sonyericsson.android.camera.util.capability;

import android.content.Context;
import android.graphics.Rect;
import com.sonyericsson.android.camera.R;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import java.util.List;

public class ResolutionOptions {
    public static final String TAG = "ResolutionOptions";
    private final String mDefaultResolution;
    private final String mDefaultVideoSize;
    private final String[] mResolutionOptions;
    private final String[] mSuperiorAutoResolutionOptions;
    private final String[] mVideoSizeOptions;

    public ResolutionOptions() {
        this.mResolutionOptions = new String[0];
        this.mSuperiorAutoResolutionOptions = new String[0];
        this.mVideoSizeOptions = new String[0];
        this.mDefaultResolution = "";
        this.mDefaultVideoSize = "";
    }

    public ResolutionOptions(Context context, String str, List<Rect> list) {
        boolean isDependOnAspect = ResolutionDependence.isDependOnAspect(context);

        int resolutionResId = -1;
        int superiorResId = -1;
        int videoSizeResId = is4KVideoSizeSupported(context)
                ? R.array.ux_recommended_video_size_array_4k_default
                : R.array.ux_recommended_video_size_array_default;
        int defaultVideoSizeResId = R.string.ux_recommended_default_video_size_default;

        switch (str) {
            case "SOI20BS0":
            case "SOI20BS2":
                resolutionResId = R.array.ux_recommended_resolution_array_blakiston;
                superiorResId = R.array.ux_recommended_resolution_array_superiorauto_blakiston;
                videoSizeResId = is4KVideoSizeSupported(context) ? R.array.ux_recommended_video_size_array_4k_blakiston
                        : R.array.ux_recommended_video_size_array_blakiston;
                defaultVideoSizeResId = R.string.ux_recommended_default_video_size_blakiston;
                break;
            case "SOS20FW0":
            case "SOI20BSA":
                resolutionResId = R.array.ux_recommended_resolution_array_cooper;
                superiorResId = R.array.ux_recommended_resolution_array_superiorauto_cooper;
                videoSizeResId = is4KVideoSizeSupported(context) ? R.array.ux_recommended_video_size_array_4k_cooper
                        : R.array.ux_recommended_video_size_array_cooper;
                defaultVideoSizeResId = R.string.ux_recommended_default_video_size_cooper;
                break;
            case "SOI13BS1":
            case "SEM13BS1":
                resolutionResId = R.array.ux_recommended_resolution_array_beagle;
                superiorResId = R.array.ux_recommended_resolution_array_superiorauto_beagle;
                videoSizeResId = R.array.ux_recommended_video_size_array_beagle;
                defaultVideoSizeResId = R.string.ux_recommended_default_video_size_beagle;
                break;
            case "LGI08BS0":
            case "CHI08BS0":
                resolutionResId = R.array.ux_recommended_resolution_array_snapper;
                superiorResId = R.array.ux_recommended_resolution_array_superiorauto_snapper;
                videoSizeResId = R.array.ux_recommended_video_size_array_snapper;
                defaultVideoSizeResId = R.string.ux_recommended_default_video_size_snapper;
                break;
            case "LGI05BN1":
            case "CHI05BN1":
                resolutionResId = R.array.ux_recommended_resolution_array_pansy;
                superiorResId = R.array.ux_recommended_resolution_array_superiorauto_pansy;
                videoSizeResId = R.array.ux_recommended_video_size_array_pansy;
                defaultVideoSizeResId = R.string.ux_recommended_default_video_size_pansy;
                break;
            case "LGI13BS0":
            case "MTM13BS0":
                resolutionResId = R.array.ux_recommended_resolution_array_poodle;
                superiorResId = R.array.ux_recommended_resolution_array_superiorauto_poodle;
                videoSizeResId = R.array.ux_recommended_video_size_array_poodle;
                defaultVideoSizeResId = R.string.ux_recommended_default_video_size_poodle;
                break;
        }

        if (resolutionResId != -1) {
            this.mResolutionOptions = context.getResources().getStringArray(resolutionResId);
            this.mSuperiorAutoResolutionOptions = context.getResources().getStringArray(superiorResId);
            this.mDefaultResolution = this.mResolutionOptions.length > 0 ? this.mResolutionOptions[0] : "";
        } else {
            String[] results = getMaxResolutions(list);
            this.mResolutionOptions = results;
            this.mSuperiorAutoResolutionOptions = results;
            if (results.length == 2) {
                this.mDefaultResolution = isDependOnAspect ? results[0] : results[1];
            } else {
                this.mDefaultResolution = results[0];
            }
        }

        this.mVideoSizeOptions = context.getResources().getStringArray(videoSizeResId);
        this.mDefaultVideoSize = context.getString(defaultVideoSizeResId);
    }

    public String[] getResolutionOptions() {
        return (String[]) this.mResolutionOptions.clone();
    }

    public String[] getSuperiorAutoResolutionOptions() {
        return (String[]) this.mSuperiorAutoResolutionOptions.clone();
    }

    public String[] getVideoSizeOptions() {
        return (String[]) this.mVideoSizeOptions.clone();
    }

    public String getDefaultResolution() {
        return this.mDefaultResolution;
    }

    public String getDefaultVideoSize() {
        return this.mDefaultVideoSize;
    }

    private boolean is4KVideoSizeSupported(Context context) {
        return context.getResources().getBoolean(R.bool.enable_4k_videosize);
    }

    private String[] getMaxResolutions(List<Rect> list) {
        Resolution resolutionFindResolution;
        Resolution resolution = null;
        Resolution resolution2 = null;
        for (Rect rect : list) {
            if (isAspectRatio4_3(rect)) {
                Resolution resolutionFindResolution2 = findResolution(rect);
                if (resolutionFindResolution2 != null && (resolution == null || rect.width()
                        * rect.height() > resolution.getPictureRect().width() * resolution.getPictureRect().height())) {
                    resolution = resolutionFindResolution2;
                }
            } else if (isAspectRatio16_9(rect) && (resolutionFindResolution = findResolution(rect)) != null
                    && (resolution2 == null || rect.width() * rect.height() > resolution2.getPictureRect().width()
                            * resolution2.getPictureRect().height())) {
                resolution2 = resolutionFindResolution;
            }
        }
        if (resolution != null && resolution2 != null) {
            return new String[] { resolution.getValue(), resolution2.getValue() };
        }
        if (resolution != null) {
            return new String[] { resolution.getValue() };
        }
        if (resolution2 != null) {
            return new String[] { resolution2.getValue() };
        }
        return new String[] { Resolution.VGA.getValue() };
    }

    private Resolution findResolution(Rect rect) {
        for (Resolution resolution : Resolution.values()) {
            if (resolution.getPictureRect().width() == rect.width()
                    && resolution.getPictureRect().height() == rect.height()) {
                return resolution;
            }
        }
        return null;
    }

    private static boolean isAspectRatio16_9(Rect rect) {
        return (rect == null || rect.width() == 0 || rect.height() == 0 || rect.width() * 9 != rect.height() * 16)
                ? false
                : true;
    }

    private static boolean isAspectRatio4_3(Rect rect) {
        return (rect == null || rect.width() == 0 || rect.height() == 0 || rect.width() * 3 != rect.height() * 4)
                ? false
                : true;
    }
}
