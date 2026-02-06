package com.sonyericsson.android.camera.parameter.dependency;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.sonyericsson.android.camera.configuration.parameters.AspectRatio;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.ObjectTracking;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSpeed;
import com.sonyericsson.android.camera.configuration.parameters.ShutterTrigger;
import com.sonyericsson.android.camera.configuration.parameters.TouchIntention;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoShutterTrigger;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;

public abstract class DependencyApplier {
    public static final String TAG = "DependencyApplier";

    public abstract void apply(CapturingModeParams capturingModeParams);

    public abstract void reset(CapturingModeParams capturingModeParams);

    @Nullable
    public static DependencyApplier create(@NonNull UserSettingValue userSettingValue) {
        switch (DependencyApplier$1.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingValue.getKey().ordinal()]) {
            case 1:
                return new HdrApplier((Hdr) userSettingValue);
            case 2:
                return new IsoApplier((Iso) userSettingValue);
            case 3:
                return new ShutterTriggerApplier((ShutterTrigger) userSettingValue);
            case 4:
                return new VideoShutterTriggerApplier((VideoShutterTrigger) userSettingValue);
            case 5:
                return new FocusModeApplier((FocusMode) userSettingValue);
            case 6:
                return new ObjectTrackingApplier((ObjectTracking) userSettingValue);
            case 7:
                return new VideoSizeApplier((VideoSize) userSettingValue);
            case 8:
                return new ResolutionApplier((Resolution) userSettingValue);
            case 9:
                return new ShutterSpeedApplier((ShutterSpeed) userSettingValue);
            case 10:
                return new TouchIntentionApplier((TouchIntention) userSettingValue);
            case 11:
                return new VideoHdrApplier((VideoHdr) userSettingValue);
            case 12:
                return new FusionModeApplier((FusionMode) userSettingValue);
            case 13:
                return new AspectRatioApplier((AspectRatio) userSettingValue);
            default:
                return null;
        }
    }
}
