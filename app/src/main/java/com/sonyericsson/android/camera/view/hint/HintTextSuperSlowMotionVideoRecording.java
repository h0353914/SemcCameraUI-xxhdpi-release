package com.sonyericsson.android.camera.view.hint;

public class HintTextSuperSlowMotionVideoRecording extends HintTextSlowMotion {
    private final boolean mIsDone;

    public HintTextSuperSlowMotionVideoRecording(boolean z) {
        super(!z ? 2131690151 : 2131690152);
        this.mIsDone = z;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public String getTag() {
        return createTag(this.mIsDone);
    }

    public static String createTag(boolean z) {
        return HintTextSuperSlowMotionVideoRecording.class.getSimpleName() + ":" + z;
    }
}
