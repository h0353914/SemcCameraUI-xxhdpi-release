package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DisplayFlash;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.baselayout.settingshortcut.ShortcutButton;
import com.sonyericsson.android.camera.view.setting.dialog.SettingDialogListener;
import com.sonyericsson.cameracommon.utility.ResourceUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
public class PrimaryShortcutGroup extends FrameLayout implements SettingDialogListener {
    private ShortcutButton mAspectRatioShortcut;
    private ShortcutButton mContextualSettingShortcut;
    private ShortcutButton mFacingShortcut;
    private ShortcutButton mFlashShortcut;
    private ShortcutButton mHdrShortcut;
    private ShortcutButton mHighSensitivityFusionShortcut;
    private View$OnClickListener mPrimaryShortcutClickListener;
    private ShortcutButton mSelfTimerShortcut;
    private ShortcutButton mSemiAutoShortcut;
    private ShortcutButton mVideoHdrShortcut;
    private ViewFinderImpl$ViewFinderAccessorForShortcut mViewFinderAccessor;

    static /* synthetic */ ViewFinderImpl$ViewFinderAccessorForShortcut access$000(PrimaryShortcutGroup primaryShortcutGroup) {
        return primaryShortcutGroup.mViewFinderAccessor;
    }

    public PrimaryShortcutGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPrimaryShortcutClickListener = new PrimaryShortcutGroup$1(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mFlashShortcut = (ShortcutButton) findViewById(2131296507);
        this.mSemiAutoShortcut = (ShortcutButton) findViewById(2131296512);
        this.mHdrShortcut = (ShortcutButton) findViewById(2131296510);
        this.mSelfTimerShortcut = (ShortcutButton) findViewById(2131296511);
        this.mAspectRatioShortcut = (ShortcutButton) findViewById(2131296505);
        this.mHighSensitivityFusionShortcut = (ShortcutButton) findViewById(2131296508);
        this.mVideoHdrShortcut = (ShortcutButton) findViewById(2131296513);
        this.mFacingShortcut = (ShortcutButton) findViewById(2131296506);
        this.mContextualSettingShortcut = (ShortcutButton) findViewById(2131296371);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        updateShortcutLayout();
        super.onLayout(z, i, i2, i3, i4);
    }

    private void updateShortcutLayout() {
        List<View> allPrimaryShortcutView = getAllPrimaryShortcutView();
        ArrayList arrayList = new ArrayList();
        for (View view : allPrimaryShortcutView) {
            if (view.getVisibility() == 0) {
                arrayList.add(view);
            }
        }
        int size = arrayList.size();
        if (size > 0) {
            View view2 = (View) arrayList.get(0);
            FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) view2.getLayoutParams();
            frameLayout$LayoutParams.gravity = 49;
            view2.setLayoutParams(frameLayout$LayoutParams);
            if (size > 1) {
                int dimensionPixelSize = ResourceUtil.getDimensionPixelSize(getContext(), getContext().getPackageName(), 2131165428);
                int height = (getHeight() - (dimensionPixelSize * size)) / (size - 1);
                for (int i = 1; i < arrayList.size(); i++) {
                    View view3 = (View) arrayList.get(i);
                    FrameLayout$LayoutParams frameLayout$LayoutParams2 = (FrameLayout$LayoutParams) view3.getLayoutParams();
                    frameLayout$LayoutParams2.topMargin = (dimensionPixelSize + height) * i;
                    view3.setLayoutParams(frameLayout$LayoutParams2);
                }
            }
        }
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialog.SettingDialogListener
    public void onOpenSettingDialog(Object obj) {
        setSelected(obj, true);
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialog.SettingDialogListener
    public void onCloseSettingDialog(Object obj) {
        setSelected(obj, false);
    }

    private void setSelected(Object obj, boolean z) {
        Map<UserSettingKey, View> primaryShortcutViewMap;
        View view;
        if (obj == null || (view = (primaryShortcutViewMap = getPrimaryShortcutViewMap()).get(obj)) == null) {
            return;
        }
        for (Map$Entry<UserSettingKey, View> map$Entry : primaryShortcutViewMap.entrySet()) {
            if (z) {
                if (map$Entry.getValue() == view) {
                    map$Entry.getValue().setSelected(z);
                } else {
                    map$Entry.getValue().setSelected(false);
                }
            } else {
                map$Entry.getValue().setSelected(z);
            }
        }
    }

    public void setUiOrientation(int i) {
        this.mFlashShortcut.setUiOrientation(i);
        this.mSemiAutoShortcut.setUiOrientation(i);
        this.mHdrShortcut.setUiOrientation(i);
        this.mSelfTimerShortcut.setUiOrientation(i);
        this.mAspectRatioShortcut.setUiOrientation(i);
        this.mHighSensitivityFusionShortcut.setUiOrientation(i);
        this.mVideoHdrShortcut.setUiOrientation(i);
        this.mFacingShortcut.setUiOrientation(i);
        this.mContextualSettingShortcut.setUiOrientation(i);
    }

    public void setViewFinderAccessor(ViewFinderImpl$ViewFinderAccessorForShortcut viewFinderImpl$ViewFinderAccessorForShortcut) {
        this.mViewFinderAccessor = viewFinderImpl$ViewFinderAccessorForShortcut;
    }

    public void show() {
        this.mFlashShortcut.show();
        this.mFlashShortcut.setOnClickListener(this.mPrimaryShortcutClickListener);
        this.mSemiAutoShortcut.show();
        this.mSemiAutoShortcut.setOnClickListener(this.mPrimaryShortcutClickListener);
        this.mHdrShortcut.show();
        this.mHdrShortcut.setOnClickListener(this.mPrimaryShortcutClickListener);
        this.mSelfTimerShortcut.show();
        this.mSelfTimerShortcut.setOnClickListener(this.mPrimaryShortcutClickListener);
        this.mAspectRatioShortcut.show();
        this.mAspectRatioShortcut.setOnClickListener(this.mPrimaryShortcutClickListener);
        this.mHighSensitivityFusionShortcut.show();
        this.mHighSensitivityFusionShortcut.setOnClickListener(this.mPrimaryShortcutClickListener);
        this.mVideoHdrShortcut.show();
        this.mVideoHdrShortcut.setOnClickListener(this.mPrimaryShortcutClickListener);
        this.mFacingShortcut.show();
        this.mFacingShortcut.setOnClickListener(this.mPrimaryShortcutClickListener);
        this.mContextualSettingShortcut.show();
        this.mContextualSettingShortcut.setOnClickListener(this.mPrimaryShortcutClickListener);
    }

    public void hide() {
        this.mFlashShortcut.hide();
        this.mFlashShortcut.setOnClickListener(null);
        this.mSemiAutoShortcut.hide();
        this.mSemiAutoShortcut.setOnClickListener(null);
        this.mHdrShortcut.hide();
        this.mHdrShortcut.setOnClickListener(null);
        this.mSelfTimerShortcut.hide();
        this.mSelfTimerShortcut.setOnClickListener(null);
        this.mAspectRatioShortcut.hide();
        this.mAspectRatioShortcut.setOnClickListener(null);
        this.mHighSensitivityFusionShortcut.hide();
        this.mHighSensitivityFusionShortcut.setOnClickListener(null);
        this.mVideoHdrShortcut.hide();
        this.mVideoHdrShortcut.setOnClickListener(null);
        this.mFacingShortcut.hide();
        this.mFacingShortcut.setOnClickListener(null);
        this.mContextualSettingShortcut.hide();
        this.mContextualSettingShortcut.setOnClickListener(null);
    }

    public void disable() {
        this.mFlashShortcut.setOnClickListener(null);
        this.mSemiAutoShortcut.setOnClickListener(null);
        this.mHdrShortcut.setOnClickListener(null);
        this.mSelfTimerShortcut.setOnClickListener(null);
        this.mAspectRatioShortcut.setOnClickListener(null);
        this.mHighSensitivityFusionShortcut.setOnClickListener(null);
        this.mVideoHdrShortcut.setOnClickListener(null);
        this.mFacingShortcut.setOnClickListener(null);
        this.mContextualSettingShortcut.setOnClickListener(null);
    }

    public Map<UserSettingKey, View> getPrimaryShortcutViewMap() {
        HashMap map = new HashMap();
        map.put(UserSettingKey.FLASH, this.mFlashShortcut);
        map.put(UserSettingKey.DISPLAY_FLASH, this.mFlashShortcut);
        map.put(UserSettingKey.PHOTO_LIGHT, this.mFlashShortcut);
        map.put(UserSettingKey.SEMI_AUTO, this.mSemiAutoShortcut);
        map.put(UserSettingKey.HDR, this.mHdrShortcut);
        map.put(UserSettingKey.SELF_TIMER, this.mSelfTimerShortcut);
        map.put(UserSettingKey.ASPECT_RATIO, this.mAspectRatioShortcut);
        map.put(UserSettingKey.FUSION_MODE, this.mHighSensitivityFusionShortcut);
        map.put(UserSettingKey.VIDEO_HDR, this.mVideoHdrShortcut);
        map.put(UserSettingKey.FACING, this.mFacingShortcut);
        map.put(UserSettingKey.SETTING_MENU, this.mContextualSettingShortcut);
        return map;
    }

    public List<View> getAllPrimaryShortcutView() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.mContextualSettingShortcut);
        arrayList.add(this.mFacingShortcut);
        arrayList.add(this.mVideoHdrShortcut);
        arrayList.add(this.mHighSensitivityFusionShortcut);
        arrayList.add(this.mHdrShortcut);
        arrayList.add(this.mSemiAutoShortcut);
        arrayList.add(this.mAspectRatioShortcut);
        arrayList.add(this.mSelfTimerShortcut);
        arrayList.add(this.mFlashShortcut);
        return arrayList;
    }

    public void updatePrimaryShortcutIcons(CapturingMode capturingMode, UserSettings userSettings, boolean z) {
        this.mContextualSettingShortcut.set(true);
        UserSettingValue userSettingValue = userSettings.get(UserSettingKey.HDR);
        UserSettingValue userSettingValue2 = userSettings.get(UserSettingKey.SELF_TIMER);
        UserSettingValue userSettingValue3 = userSettings.get(UserSettingKey.ASPECT_RATIO);
        UserSettingValue userSettingValue4 = userSettings.get(UserSettingKey.FUSION_MODE);
        UserSettingValue userSettingValue5 = userSettings.get(UserSettingKey.VIDEO_HDR);
        switch (capturingMode) {
            case NORMAL:
                Flash currentFlashSetting = getCurrentFlashSetting(getFlashOptions(capturingMode), (Flash) userSettings.get(UserSettingKey.FLASH));
                if (currentFlashSetting != null) {
                    this.mFlashShortcut.setContentDescription(getString(2131689571));
                    this.mFlashShortcut.setImageResource(currentFlashSetting.getIconId());
                    this.mFlashShortcut.set(true);
                } else {
                    this.mFlashShortcut.set(false);
                }
                this.mSemiAutoShortcut.set(false);
                if (userSettingValue != null) {
                    this.mHdrShortcut.setImageResource(userSettingValue.getIconId());
                    this.mHdrShortcut.set(true);
                } else {
                    this.mHdrShortcut.set(false);
                }
                if (userSettingValue2 != null) {
                    this.mSelfTimerShortcut.setImageResource(userSettingValue2.getIconId());
                    this.mSelfTimerShortcut.set(true);
                } else {
                    this.mSelfTimerShortcut.set(false);
                }
                if (userSettingValue3 != null) {
                    this.mAspectRatioShortcut.setImageResource(userSettingValue3.getIconId());
                    this.mAspectRatioShortcut.set(true);
                } else {
                    this.mAspectRatioShortcut.set(false);
                }
                this.mHighSensitivityFusionShortcut.set(false);
                this.mVideoHdrShortcut.set(false);
                if (PlatformCapability.isFrontCameraSupported()) {
                    this.mFacingShortcut.setContentDescription(getString(2131689610));
                    this.mFacingShortcut.set(true);
                }
                break;
            case SCENE_RECOGNITION:
                Flash currentFlashSetting2 = getCurrentFlashSetting(getFlashOptions(capturingMode), (Flash) userSettings.get(UserSettingKey.FLASH));
                if (currentFlashSetting2 != null) {
                    this.mFlashShortcut.setContentDescription(getString(2131689571));
                    this.mFlashShortcut.setImageResource(currentFlashSetting2.getIconId());
                    this.mFlashShortcut.set(true);
                } else {
                    this.mFlashShortcut.set(false);
                }
                if (PlatformCapability.isAwbAbCompensationSupported(capturingMode.getCameraId())) {
                    this.mSemiAutoShortcut.set(true);
                } else {
                    this.mSemiAutoShortcut.set(false);
                }
                this.mHdrShortcut.set(false);
                if (userSettingValue2 != null) {
                    this.mSelfTimerShortcut.setImageResource(userSettingValue2.getIconId());
                    this.mSelfTimerShortcut.set(true);
                } else {
                    this.mSelfTimerShortcut.set(false);
                }
                if (userSettingValue3 != null) {
                    this.mAspectRatioShortcut.setImageResource(userSettingValue3.getIconId());
                    this.mAspectRatioShortcut.set(true);
                } else {
                    this.mAspectRatioShortcut.set(false);
                }
                this.mHighSensitivityFusionShortcut.set(false);
                this.mVideoHdrShortcut.set(false);
                if (PlatformCapability.isFrontCameraSupported()) {
                    this.mFacingShortcut.setContentDescription(getString(2131689610));
                    this.mFacingShortcut.set(true);
                }
                break;
            case VIDEO:
                PhotoLight currentPhotoLightSetting = getCurrentPhotoLightSetting(getPhotoLightOptions(capturingMode), (PhotoLight) userSettings.get(UserSettingKey.PHOTO_LIGHT));
                if (currentPhotoLightSetting != null) {
                    this.mFlashShortcut.setContentDescription(getString(2131689570));
                    this.mFlashShortcut.setImageResource(currentPhotoLightSetting.getIconId());
                    this.mFlashShortcut.set(true);
                } else {
                    this.mFlashShortcut.set(false);
                }
                if (PlatformCapability.isAwbAbCompensationSupported(capturingMode.getCameraId())) {
                    this.mSemiAutoShortcut.set(true);
                } else {
                    this.mSemiAutoShortcut.set(false);
                }
                this.mHdrShortcut.set(false);
                this.mSelfTimerShortcut.set(false);
                this.mAspectRatioShortcut.set(false);
                if (userSettingValue4 != null && PlatformCapability.isHighSensitivityFusionSupported(capturingMode.getCameraId())) {
                    if (UserSettingKey.FUSION_MODE.isSelectable()) {
                        this.mHighSensitivityFusionShortcut.setImageResource(userSettingValue4.getIconId());
                    } else {
                        this.mHighSensitivityFusionShortcut.setImageResource(FusionMode.OFF.getIconId());
                    }
                    this.mHighSensitivityFusionShortcut.set(true);
                } else {
                    this.mHighSensitivityFusionShortcut.set(false);
                }
                if (!z && userSettingValue5 != null && PlatformCapability.isVideoHdrSupported(capturingMode.getCameraId())) {
                    if (UserSettingKey.VIDEO_HDR.isSelectable()) {
                        this.mVideoHdrShortcut.setImageResource(userSettingValue5.getIconId());
                    } else {
                        this.mVideoHdrShortcut.setImageResource(VideoHdr.HDR_OFF.getIconId());
                    }
                    this.mVideoHdrShortcut.set(true);
                } else {
                    this.mVideoHdrShortcut.set(false);
                }
                if (PlatformCapability.isFrontCameraSupported()) {
                    this.mFacingShortcut.setContentDescription(getString(2131689610));
                    this.mFacingShortcut.set(true);
                }
                break;
            case FRONT_PHOTO:
                DisplayFlash currentDisplayFlashSetting = getCurrentDisplayFlashSetting(getDisplayFlashOptions(capturingMode), (DisplayFlash) userSettings.get(UserSettingKey.DISPLAY_FLASH));
                if (currentDisplayFlashSetting != null) {
                    this.mFlashShortcut.setContentDescription(getString(2131689571));
                    this.mFlashShortcut.setImageResource(currentDisplayFlashSetting.getIconId());
                    this.mFlashShortcut.set(true);
                } else {
                    this.mFlashShortcut.set(false);
                }
                this.mSemiAutoShortcut.set(false);
                if (userSettingValue != null) {
                    this.mHdrShortcut.setImageResource(userSettingValue.getIconId());
                    this.mHdrShortcut.set(true);
                } else {
                    this.mHdrShortcut.set(false);
                }
                if (userSettingValue2 != null) {
                    this.mSelfTimerShortcut.setImageResource(userSettingValue2.getIconId());
                    this.mSelfTimerShortcut.set(true);
                } else {
                    this.mSelfTimerShortcut.set(false);
                }
                if (userSettingValue3 != null) {
                    this.mAspectRatioShortcut.setImageResource(userSettingValue3.getIconId());
                    this.mAspectRatioShortcut.set(true);
                } else {
                    this.mAspectRatioShortcut.set(false);
                }
                this.mHighSensitivityFusionShortcut.set(false);
                this.mVideoHdrShortcut.set(false);
                if (PlatformCapability.isFrontCameraSupported()) {
                    this.mFacingShortcut.setContentDescription(getString(2131689612));
                    this.mFacingShortcut.set(true);
                }
                break;
            case SUPERIOR_FRONT:
                DisplayFlash currentDisplayFlashSetting2 = getCurrentDisplayFlashSetting(getDisplayFlashOptions(capturingMode), (DisplayFlash) userSettings.get(UserSettingKey.DISPLAY_FLASH));
                if (currentDisplayFlashSetting2 != null) {
                    this.mFlashShortcut.setContentDescription(getString(2131689571));
                    this.mFlashShortcut.setImageResource(currentDisplayFlashSetting2.getIconId());
                    this.mFlashShortcut.set(true);
                } else {
                    this.mFlashShortcut.set(false);
                }
                if (PlatformCapability.isAwbAbCompensationSupported(capturingMode.getCameraId())) {
                    this.mSemiAutoShortcut.set(true);
                } else {
                    this.mSemiAutoShortcut.set(false);
                }
                this.mHdrShortcut.set(false);
                if (userSettingValue2 != null) {
                    this.mSelfTimerShortcut.set(true);
                    this.mSelfTimerShortcut.setImageResource(userSettingValue2.getIconId());
                } else {
                    this.mSelfTimerShortcut.set(false);
                }
                if (userSettingValue3 != null) {
                    this.mAspectRatioShortcut.setImageResource(userSettingValue3.getIconId());
                    this.mAspectRatioShortcut.set(true);
                } else {
                    this.mAspectRatioShortcut.set(false);
                }
                this.mHighSensitivityFusionShortcut.set(false);
                this.mVideoHdrShortcut.set(false);
                if (PlatformCapability.isFrontCameraSupported()) {
                    this.mFacingShortcut.setContentDescription(getString(2131689612));
                    this.mFacingShortcut.set(true);
                }
                break;
            case FRONT_VIDEO:
                this.mFlashShortcut.set(false);
                if (PlatformCapability.isAwbAbCompensationSupported(capturingMode.getCameraId())) {
                    this.mSemiAutoShortcut.set(true);
                } else {
                    this.mSemiAutoShortcut.set(false);
                }
                this.mHdrShortcut.set(false);
                this.mSelfTimerShortcut.set(false);
                this.mAspectRatioShortcut.set(false);
                this.mHighSensitivityFusionShortcut.set(false);
                this.mVideoHdrShortcut.set(false);
                if (PlatformCapability.isFrontCameraSupported()) {
                    this.mFacingShortcut.setContentDescription(getString(2131689612));
                    this.mFacingShortcut.set(true);
                }
                break;
            case SLOW_MOTION:
                PhotoLight currentPhotoLightSetting2 = getCurrentPhotoLightSetting(getPhotoLightOptions(capturingMode), (PhotoLight) userSettings.get(UserSettingKey.PHOTO_LIGHT));
                if (currentPhotoLightSetting2 != null) {
                    this.mFlashShortcut.setContentDescription(getString(2131689570));
                    this.mFlashShortcut.setImageResource(currentPhotoLightSetting2.getIconId());
                    this.mFlashShortcut.set(true);
                } else {
                    this.mFlashShortcut.set(false);
                }
                if (PlatformCapability.isAwbAbCompensationSupported(capturingMode.getCameraId())) {
                    this.mSemiAutoShortcut.set(true);
                } else {
                    this.mSemiAutoShortcut.set(false);
                }
                this.mHdrShortcut.set(false);
                this.mSelfTimerShortcut.set(false);
                this.mAspectRatioShortcut.set(false);
                this.mHighSensitivityFusionShortcut.set(false);
                this.mVideoHdrShortcut.set(false);
                this.mFacingShortcut.set(false);
                break;
        }
    }

    public void updatePrimaryShortcutIcon(UserSettingKey userSettingKey, int i) {
        switch (userSettingKey) {
            case FLASH:
            case DISPLAY_FLASH:
            case PHOTO_LIGHT:
                this.mFlashShortcut.setImageResource(i);
                break;
            case SELF_TIMER:
                this.mSelfTimerShortcut.setImageResource(i);
                break;
            case HDR:
                this.mHdrShortcut.setImageResource(i);
                break;
            case ASPECT_RATIO:
                this.mAspectRatioShortcut.setImageResource(i);
                break;
            case FUSION_MODE:
                if (UserSettingKey.FUSION_MODE.isSelectable()) {
                    this.mHighSensitivityFusionShortcut.setImageResource(i);
                } else {
                    this.mHighSensitivityFusionShortcut.setImageResource(FusionMode.OFF.getIconId());
                }
                break;
            case VIDEO_HDR:
                if (UserSettingKey.VIDEO_HDR.isSelectable()) {
                    this.mVideoHdrShortcut.setImageResource(i);
                } else {
                    this.mVideoHdrShortcut.setImageResource(VideoHdr.HDR_OFF.getIconId());
                }
                break;
        }
    }

    private Flash[] getFlashOptions(CapturingMode capturingMode) {
        List<String> supportedFlashModes = PlatformCapability.getSupportedFlashModes(capturingMode.getCameraId());
        return LedOptionsResolver.getInstance().getFlashOptions(new ActionMode(false, 1, capturingMode.getCameraId()), supportedFlashModes);
    }

    private DisplayFlash[] getDisplayFlashOptions(CapturingMode capturingMode) {
        List<String> supportedFlashModes = PlatformCapability.getSupportedFlashModes(capturingMode.getCameraId());
        return LedOptionsResolver.getInstance().getDisplayFlashOptions(new ActionMode(false, 1, capturingMode.getCameraId()), supportedFlashModes);
    }

    private PhotoLight[] getPhotoLightOptions(CapturingMode capturingMode) {
        List<String> supportedFlashModes = PlatformCapability.getSupportedFlashModes(capturingMode.getCameraId());
        return LedOptionsResolver.getInstance().getPhotoLightOptions(new ActionMode(false, 2, capturingMode.getCameraId()), supportedFlashModes);
    }

    private Flash getCurrentFlashSetting(Flash[] flashArr, Flash flash) {
        if (flashArr == null || flash == null) {
            return null;
        }
        for (Flash flash2 : flashArr) {
            if (flash2 != null && flash.getValue().equals(flash2.getValue())) {
                return flash2;
            }
        }
        return null;
    }

    private DisplayFlash getCurrentDisplayFlashSetting(DisplayFlash[] displayFlashArr, DisplayFlash displayFlash) {
        if (displayFlashArr == null || displayFlash == null) {
            return null;
        }
        for (DisplayFlash displayFlash2 : displayFlashArr) {
            if (displayFlash2 != null && displayFlash.getValue().equals(displayFlash2.getValue())) {
                return displayFlash2;
            }
        }
        return null;
    }

    private PhotoLight getCurrentPhotoLightSetting(PhotoLight[] photoLightArr, PhotoLight photoLight) {
        if (photoLightArr == null || photoLight == null) {
            return null;
        }
        for (PhotoLight photoLight2 : photoLightArr) {
            if (photoLight2 != null && photoLight.getValue().equals(photoLight2.getValue())) {
                return photoLight2;
            }
        }
        return null;
    }

    private String getString(int i) {
        return ResourceUtil.getString(getContext(), i);
    }
}
