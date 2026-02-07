package com.sonymobile.cameracommon.research;

import android.graphics.Point;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;
import com.sonymobile.cameracommon.research.parameters.ShootingLabel;
import com.sonymobile.cameracommon.research.parameters.ShootingLabel$Parameter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$TemporarySettingValues {
    private boolean mRecordBySideSense;
    private float mZoomRatio = 1.0f;
    private int mOrientation = 0;
    private int mFaceNum = 0;
    private int mRecordingMaxFaceNum = 0;
    private int mPredictiveCaptureNum = 0;
    private int mManualBurstCount = 0;
    private Event$CaptureTrigger mCaptureTrigger = Event$CaptureTrigger.OTHER;
    private Point mSideSensePosition = new Point();
    private int mAssistSelfTimer = -1;

    static /* synthetic */ Event$CaptureTrigger access$100(ResearchUtil$TemporarySettingValues researchUtil$TemporarySettingValues) {
        return researchUtil$TemporarySettingValues.mCaptureTrigger;
    }

    static /* synthetic */ Point access$200(ResearchUtil$TemporarySettingValues researchUtil$TemporarySettingValues) {
        return researchUtil$TemporarySettingValues.mSideSensePosition;
    }

    static /* synthetic */ boolean access$2600(ResearchUtil$TemporarySettingValues researchUtil$TemporarySettingValues) {
        return researchUtil$TemporarySettingValues.mRecordBySideSense;
    }

    static /* synthetic */ boolean access$2602(ResearchUtil$TemporarySettingValues researchUtil$TemporarySettingValues, boolean z) {
        researchUtil$TemporarySettingValues.mRecordBySideSense = z;
        return z;
    }

    static /* synthetic */ int access$300(ResearchUtil$TemporarySettingValues researchUtil$TemporarySettingValues) {
        return researchUtil$TemporarySettingValues.mAssistSelfTimer;
    }

    public void updateZoomRatio(float f) {
        this.mZoomRatio = f;
    }

    public void updateOrientation(int i) {
        this.mOrientation = i;
    }

    public void updateFaceNum(int i) {
        this.mFaceNum = i;
    }

    public void updateRecordingMaxFaceNum(int i) {
        if (this.mRecordingMaxFaceNum < i) {
            this.mRecordingMaxFaceNum = i;
        }
    }

    public void updatePredictiveCaptureNum(int i) {
        this.mPredictiveCaptureNum = i;
    }

    public void updateManualBurstCount(int i) {
        this.mManualBurstCount = i;
    }

    public void updateCaptureTrigger(Event$CaptureTrigger event$CaptureTrigger) {
        this.mCaptureTrigger = event$CaptureTrigger;
    }

    public void updateSideSensePosition(int i, int i2) {
        this.mSideSensePosition = new Point(i, i2);
    }

    public void updateRecordBySideSense(boolean z) {
        this.mRecordBySideSense = z;
    }

    public void updateAssistSelfTimer(int i) {
        this.mAssistSelfTimer = i;
    }

    public void clearFaceNum() {
        this.mFaceNum = 0;
    }

    public void clearRecordingMaxFaceNum() {
        this.mRecordingMaxFaceNum = 0;
    }

    public void clearCaptureTrigger() {
        this.mCaptureTrigger = Event$CaptureTrigger.OTHER;
    }

    public void clearAssistSelfTimer() {
        this.mAssistSelfTimer = -1;
    }

    private int roundZoomRatio() {
        if (this.mZoomRatio - 0.05f < 1.0f) {
            return 0;
        }
        return (int) this.mZoomRatio;
    }

    public String toString() {
        return "Z" + roundZoomRatio() + "_O" + this.mOrientation + "_F" + this.mFaceNum;
    }

    public String toStringForRecording() {
        return "Z" + roundZoomRatio() + "_O" + this.mOrientation + "_F" + this.mRecordingMaxFaceNum;
    }

    public String getManualBurstParameterForIDD() {
        if (this.mManualBurstCount == 0) {
            return "False";
        }
        return String.valueOf(this.mManualBurstCount) + "_Shots";
    }

    public List<ShootingLabel$Parameter> getParameterList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(ShootingLabel.getOrientationParameter(this.mOrientation));
        arrayList.add(ShootingLabel.getZoomParameter(roundZoomRatio()));
        arrayList.add(ShootingLabel.getFaceNumParameter(this.mFaceNum));
        arrayList.add(ShootingLabel.getPredictiveCaptureNumParameter(this.mPredictiveCaptureNum));
        arrayList.add(ShootingLabel.getCaptureTriggerParameter(this.mCaptureTrigger.toString()));
        return arrayList;
    }

    public List<ShootingLabel$Parameter> getParameterListForRecording() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(ShootingLabel.getOrientationParameter(this.mOrientation));
        arrayList.add(ShootingLabel.getZoomParameter(roundZoomRatio()));
        arrayList.add(ShootingLabel.getFaceNumParameter(this.mRecordingMaxFaceNum));
        return arrayList;
    }
}
