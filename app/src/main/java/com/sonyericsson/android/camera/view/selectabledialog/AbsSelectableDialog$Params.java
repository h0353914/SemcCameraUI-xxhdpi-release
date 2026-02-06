package com.sonyericsson.android.camera.view.selectabledialog;

public class AbsSelectableDialog$Params {
    public AbsSelectableDialog$AnimationType animationType;
    public int bottomMarginLandscape;
    public int bottomMarginPortrait;
    public int dropShadowSpace;
    public AbsSelectableDialog$HorizontalGravity horizontalGavity;
    public int itemHeight;
    public int itemWidth;
    public int leftMarginLandscape;
    public int leftMarginPortrait;
    public int maxHeightLandscape;
    public int maxHeightPortrait;
    public int panelBackgroundColor;
    public int rightMarginLandscape;
    public int rightMarginPortrait;
    public int scrollBarDefaultDelayBeforeFade;
    public int scrollbarFadeDuration;

    public AbsSelectableDialog$Params() {
        this.animationType = AbsSelectableDialog$AnimationType.NONE;
        this.horizontalGavity = AbsSelectableDialog$HorizontalGravity.RIGHT;
    }

    public AbsSelectableDialog$Params(AbsSelectableDialog$Params absSelectableDialog$Params) {
        this.animationType = AbsSelectableDialog$AnimationType.NONE;
        this.horizontalGavity = AbsSelectableDialog$HorizontalGravity.RIGHT;
        this.itemWidth = absSelectableDialog$Params.itemWidth;
        this.itemHeight = absSelectableDialog$Params.itemHeight;
        this.maxHeightLandscape = absSelectableDialog$Params.maxHeightLandscape;
        this.maxHeightPortrait = absSelectableDialog$Params.maxHeightPortrait;
        this.rightMarginLandscape = absSelectableDialog$Params.rightMarginLandscape;
        this.rightMarginPortrait = absSelectableDialog$Params.rightMarginPortrait;
        this.leftMarginLandscape = absSelectableDialog$Params.leftMarginLandscape;
        this.leftMarginPortrait = absSelectableDialog$Params.leftMarginPortrait;
        this.bottomMarginLandscape = absSelectableDialog$Params.bottomMarginLandscape;
        this.bottomMarginPortrait = absSelectableDialog$Params.bottomMarginPortrait;
        this.panelBackgroundColor = absSelectableDialog$Params.panelBackgroundColor;
        this.scrollbarFadeDuration = absSelectableDialog$Params.scrollbarFadeDuration;
        this.scrollBarDefaultDelayBeforeFade = absSelectableDialog$Params.scrollBarDefaultDelayBeforeFade;
        this.dropShadowSpace = absSelectableDialog$Params.dropShadowSpace;
        this.animationType = absSelectableDialog$Params.animationType;
        this.horizontalGavity = absSelectableDialog$Params.horizontalGavity;
    }
}
