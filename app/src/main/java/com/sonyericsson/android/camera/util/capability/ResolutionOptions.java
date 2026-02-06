package com.sonyericsson.android.camera.util.capability;

import android.content.Context;
import android.graphics.Rect;
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ResolutionOptions(Context context, String str, List<Rect> list) {
        Boolean boolValueOf;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolValueOf = Boolean.valueOf(ResolutionDependence.isDependOnAspect(context));
        switch (str) {
            case "SOI20BS0":
            case "SOI20BS2":
                i = 2130903041;
                i2 = 2130903047;
                i3 = is4KVideoSizeSupported(context) ? 2130903052 : 2130903055;
                i4 = boolValueOf.booleanValue() ? 2131690322 : 2131690335;
                i5 = 2131690338;
                break;
            case "SOS20FW0":
            case "SOI20BSA":
                i = 2130903042;
                i2 = 2130903048;
                i3 = is4KVideoSizeSupported(context) ? 2130903053 : 2130903056;
                i4 = boolValueOf.booleanValue() ? 2131690323 : 2131690336;
                i5 = 2131690339;
                break;
            case "SOI13BS1":
            case "SEM13BS1":
                i = 2130903040;
                i2 = 2130903046;
                i7 = 2130903054;
                i6 = 2131690321;
                i5 = 2131690337;
                this.mResolutionOptions = context.getResources().getStringArray(i);
                this.mSuperiorAutoResolutionOptions = context.getResources().getStringArray(i2);
                this.mVideoSizeOptions = context.getResources().getStringArray(i7);
                this.mDefaultResolution = context.getResources().getString(i6);
                this.mDefaultVideoSize = context.getResources().getString(i5);
            case "LGI08BS0":
            case "CHI08BS0":
                i = 2130903045;
                i2 = 2130903051;
                i7 = 2130903060;
                i6 = 2131690326;
                i5 = 2131690344;
                this.mResolutionOptions = context.getResources().getStringArray(i);
                this.mSuperiorAutoResolutionOptions = context.getResources().getStringArray(i2);
                this.mVideoSizeOptions = context.getResources().getStringArray(i7);
                this.mDefaultResolution = context.getResources().getString(i6);
                this.mDefaultVideoSize = context.getResources().getString(i5);
            case "LGI05BN1":
            case "CHI05BN1":
                i = 2130903043;
                i2 = 2130903049;
                i7 = 2130903058;
                i6 = 2131690324;
                i5 = 2131690342;
                this.mResolutionOptions = context.getResources().getStringArray(i);
                this.mSuperiorAutoResolutionOptions = context.getResources().getStringArray(i2);
                this.mVideoSizeOptions = context.getResources().getStringArray(i7);
                this.mDefaultResolution = context.getResources().getString(i6);
                this.mDefaultVideoSize = context.getResources().getString(i5);
            case "LGI13BS0":
            case "MTM13BS0":
                i = 2130903044;
                i2 = 2130903050;
                i7 = 2130903059;
                i6 = 2131690325;
                i5 = 2131690343;
                this.mResolutionOptions = context.getResources().getStringArray(i);
                this.mSuperiorAutoResolutionOptions = context.getResources().getStringArray(i2);
                this.mVideoSizeOptions = context.getResources().getStringArray(i7);
                this.mDefaultResolution = context.getResources().getString(i6);
                this.mDefaultVideoSize = context.getResources().getString(i5);
            case "":
            default:
                this.mResolutionOptions = getMaxResolutions(list);
                this.mSuperiorAutoResolutionOptions = this.mResolutionOptions;
                if (getMaxResolutions(list).length != 2 || boolValueOf.booleanValue()) {
                    this.mDefaultResolution = getMaxResolutions(list)[0];
                } else {
                    this.mDefaultResolution = getMaxResolutions(list)[1];
                }
                this.mVideoSizeOptions = context.getResources().getStringArray(2130903057);
                this.mDefaultVideoSize = context.getResources().getString(2131690340);
                return;
        }
        int i8 = i3;
        i6 = i4;
        i7 = i8;
        this.mResolutionOptions = context.getResources().getStringArray(i);
        this.mSuperiorAutoResolutionOptions = context.getResources().getStringArray(i2);
        this.mVideoSizeOptions = context.getResources().getStringArray(i7);
        this.mDefaultResolution = context.getResources().getString(i6);
        this.mDefaultVideoSize = context.getResources().getString(i5);
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
        return context.getResources().getBoolean(2131034117);
    }

    private String[] getMaxResolutions(List<Rect> list) {
        Resolution resolutionFindResolution;
        Resolution resolution = null;
        Resolution resolution2 = null;
        for (Rect rect : list) {
            if (isAspectRatio4_3(rect)) {
                Resolution resolutionFindResolution2 = findResolution(rect);
                if (resolutionFindResolution2 != null && (resolution == null || rect.width() * rect.height() > resolution.getPictureRect().width() * resolution.getPictureRect().height())) {
                    resolution = resolutionFindResolution2;
                }
            } else if (isAspectRatio16_9(rect) && (resolutionFindResolution = findResolution(rect)) != null && (resolution2 == null || rect.width() * rect.height() > resolution2.getPictureRect().width() * resolution2.getPictureRect().height())) {
                resolution2 = resolutionFindResolution;
            }
        }
        if (resolution != null && resolution2 != null) {
            return new String[]{resolution.getValue(), resolution2.getValue()};
        }
        if (resolution != null) {
            return new String[]{resolution.getValue()};
        }
        if (resolution2 != null) {
            return new String[]{resolution2.getValue()};
        }
        return new String[]{Resolution.VGA.getValue()};
    }

    private Resolution findResolution(Rect rect) {
        for (Resolution resolution : Resolution.values()) {
            if (resolution.getPictureRect().width() == rect.width() && resolution.getPictureRect().height() == rect.height()) {
                return resolution;
            }
        }
        return null;
    }

    private static boolean isAspectRatio16_9(Rect rect) {
        return (rect == null || rect.width() == 0 || rect.height() == 0 || rect.width() * 9 != rect.height() * 16) ? false : true;
    }

    private static boolean isAspectRatio4_3(Rect rect) {
        return (rect == null || rect.width() == 0 || rect.height() == 0 || rect.width() * 3 != rect.height() * 4) ? false : true;
    }
}
