package com.sonyericsson.cameracommon.viewfinder.recordingindicator;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory$Options;
import android.media.ThumbnailUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import android.widget.TextView;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver$ScreenAspect;
import com.sonyericsson.cameracommon.contentsview.ThumbnailUtil;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;
import com.sonyericsson.cameracommon.utility.ResourceUtil;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonymobile.cameracommon.extendedview.RoundRectImageView;
import com.sonymobile.cameracommon.font.FontUtil;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class RecordingIndicator extends RelativeLayout implements RecordingTimeIndicator {
    public static final String TAG = "RecordingIndicator";
    private LinearLayout mConstraintIndicator;
    private TextView mConstraintRecordingTimeText;
    private View mContainer;
    private int mDisplayOrientation;
    private int mDuration;
    private boolean mIsConstraint;
    private boolean mIsRecording;
    private boolean mIsSequence;
    private boolean mIsThumbnailReady;
    private TextView mMaxDurationText;
    private DurationParameterSet mMaxTime;
    private int mPivotForRotationConstraint;
    private int mPivotForRotationSequence;
    private int mPivotForRotationUnConstraint;
    private RecordingProgressBar mProgressBar;
    private final float mRadius;
    private DurationParameterSet mRecordingTime;
    private LayoutDependencyResolver$ScreenAspect mScreenAspect;
    private LinearLayout mSequenceIndicator;
    private TextView mSequenceRec;
    private TextView mSequenceRecordingTimeText;
    private String mStringFormatRecordingTime;
    private String mStringFormatRemainConstraintTime;
    private int mThumbnailCnt;
    private LinearLayout mThumbnailContainer;
    private final int mThumbnailMaxNum;
    private final int mThumbnailPadding;
    private final RelativeLayout$LayoutParams mThumbnailParams;
    private final int mThumbnailSize;
    private final Bitmap[] mThumbnails;
    private LinearLayout mTimeContainer;
    private LinearLayout mUnConstraintIndicator;
    private TextView mUnConstraintRecordingTimeText;

    public void release() {
    }

    public RecordingIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mUnConstraintIndicator = null;
        this.mUnConstraintRecordingTimeText = null;
        this.mConstraintIndicator = null;
        this.mConstraintRecordingTimeText = null;
        this.mMaxDurationText = null;
        this.mSequenceIndicator = null;
        this.mSequenceRecordingTimeText = null;
        this.mThumbnailContainer = null;
        this.mTimeContainer = null;
        this.mSequenceRec = null;
        this.mProgressBar = null;
        this.mThumbnailMaxNum = getResources().getInteger(2131361803);
        this.mThumbnailSize = getResources().getDimensionPixelSize(2131165525);
        this.mRadius = getResources().getDimension(2131165524);
        this.mThumbnailParams = new RelativeLayout$LayoutParams(-2, this.mThumbnailSize);
        this.mThumbnailPadding = getResources().getDimensionPixelSize(2131165523);
        this.mStringFormatRemainConstraintTime = null;
        this.mStringFormatRecordingTime = null;
        this.mIsConstraint = false;
        this.mIsSequence = false;
        this.mIsThumbnailReady = false;
        this.mIsRecording = false;
        this.mThumbnailCnt = 0;
        this.mThumbnails = new Bitmap[this.mThumbnailMaxNum];
        this.mDuration = 0;
        this.mMaxTime = null;
        this.mRecordingTime = null;
        this.mPivotForRotationUnConstraint = context.getResources().getDimensionPixelSize(2131165528) / 2;
        this.mPivotForRotationConstraint = context.getResources().getDimensionPixelSize(2131165510) / 2;
        this.mPivotForRotationSequence = context.getResources().getDimensionPixelSize(2131165518) / 2;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mUnConstraintIndicator = (LinearLayout) findViewById(2131296685);
        this.mUnConstraintRecordingTimeText = (TextView) this.mUnConstraintIndicator.findViewById(2131296524);
        FontUtil.setBold(this.mUnConstraintRecordingTimeText);
        FontUtil.setBold((TextView) this.mUnConstraintIndicator.findViewById(2131296522));
        this.mConstraintIndicator = (LinearLayout) findViewById(2131296362);
        this.mConstraintRecordingTimeText = (TextView) this.mConstraintIndicator.findViewById(2131296524);
        FontUtil.setBold(this.mConstraintRecordingTimeText);
        FontUtil.setBold((TextView) this.mConstraintIndicator.findViewById(2131296522));
        FontUtil.setBold((TextView) this.mConstraintIndicator.findViewById(2131296521));
        this.mMaxDurationText = (TextView) this.mConstraintIndicator.findViewById(2131296530);
        FontUtil.setBold(this.mMaxDurationText);
        this.mProgressBar = (RecordingProgressBar) findViewById(2131296516);
        this.mSequenceIndicator = (LinearLayout) findViewById(2131296596);
        this.mSequenceRecordingTimeText = (TextView) this.mSequenceIndicator.findViewById(2131296524);
        FontUtil.setBold(this.mSequenceRecordingTimeText);
        this.mSequenceRec = (TextView) this.mSequenceIndicator.findViewById(2131296522);
        FontUtil.setBold(this.mSequenceRec);
        this.mThumbnailContainer = (LinearLayout) this.mSequenceIndicator.findViewById(2131296660);
        this.mTimeContainer = (LinearLayout) this.mSequenceIndicator.findViewById(2131296662);
        this.mMaxTime = new DurationParameterSet();
        this.mRecordingTime = new DurationParameterSet();
        this.mContainer = findViewById(2131296520);
    }

    public void setConstraint(boolean z) {
        this.mIsConstraint = z;
    }

    public void setSequenceMode(boolean z) {
        this.mIsSequence = z;
    }

    public void prepareBeforeRecording(int i) {
        this.mRecordingTime.update(0);
        this.mContainer.setVisibility(4);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(2131165517);
        if (this.mIsConstraint) {
            this.mDuration = i;
            this.mMaxTime.update(this.mDuration);
            this.mProgressBar.setProgress(0, 0);
            this.mStringFormatRemainConstraintTime = getContext().getString(2131689547);
            this.mMaxDurationText.setText(String.format(Locale.US, this.mStringFormatRemainConstraintTime, Integer.valueOf(this.mMaxTime.min), Integer.valueOf(this.mMaxTime.sec)));
            this.mStringFormatRecordingTime = getContext().getString(2131689547);
            this.mConstraintRecordingTimeText.setText(String.format(Locale.US, this.mStringFormatRecordingTime, Integer.valueOf(this.mRecordingTime.min), Integer.valueOf(this.mRecordingTime.sec)));
        } else {
            this.mStringFormatRecordingTime = getContext().getString(2131689547);
            if (this.mIsSequence) {
                resetThumbnails();
                setIndicator(this.mIsRecording);
                this.mSequenceRecordingTimeText.setText(String.format(Locale.US, this.mStringFormatRecordingTime, Integer.valueOf(this.mRecordingTime.min), Integer.valueOf(this.mRecordingTime.sec)));
                this.mSequenceRecordingTimeText.getLayoutParams().width = dimensionPixelSize;
            } else {
                this.mUnConstraintRecordingTimeText.setText(String.format(Locale.US, this.mStringFormatRecordingTime, Integer.valueOf(this.mRecordingTime.min), Integer.valueOf(this.mRecordingTime.sec)));
                this.mUnConstraintRecordingTimeText.getLayoutParams().width = dimensionPixelSize;
            }
        }
        if (this.mIsConstraint) {
            this.mConstraintIndicator.setVisibility(0);
            this.mUnConstraintIndicator.setVisibility(8);
            this.mSequenceIndicator.setVisibility(8);
        } else if (this.mIsSequence) {
            this.mConstraintIndicator.setVisibility(8);
            this.mUnConstraintIndicator.setVisibility(8);
            this.mSequenceIndicator.setVisibility(0);
        } else {
            this.mConstraintIndicator.setVisibility(8);
            this.mUnConstraintIndicator.setVisibility(0);
            this.mSequenceIndicator.setVisibility(8);
        }
        updateLayout();
    }

    private void updateProgressbar(int i) {
        if (i > this.mDuration) {
            return;
        }
        this.mProgressBar.setProgress(i, this.mDuration);
    }

    public void updateRecordingTime(int i) {
        String str;
        int dimensionPixelSize;
        this.mRecordingTime.update(i);
        this.mContainer.setVisibility(0);
        if (this.mRecordingTime.hour < 1) {
            this.mStringFormatRecordingTime = getContext().getString(2131689547);
            str = String.format(Locale.US, this.mStringFormatRecordingTime, Integer.valueOf(this.mRecordingTime.min), Integer.valueOf(this.mRecordingTime.sec));
            dimensionPixelSize = getContext().getResources().getDimensionPixelSize(2131165517);
        } else {
            this.mStringFormatRecordingTime = getContext().getString(2131689546);
            str = String.format(Locale.US, this.mStringFormatRecordingTime, Integer.valueOf(this.mRecordingTime.hour), Integer.valueOf(this.mRecordingTime.min), Integer.valueOf(this.mRecordingTime.sec));
            dimensionPixelSize = getContext().getResources().getDimensionPixelSize(2131165516);
        }
        if (this.mIsConstraint) {
            this.mConstraintRecordingTimeText.setText(str);
            updateProgressbar(i);
        } else if (this.mIsSequence) {
            this.mSequenceRecordingTimeText.setText(str);
            this.mSequenceRecordingTimeText.getLayoutParams().width = dimensionPixelSize;
        } else {
            this.mUnConstraintRecordingTimeText.setText(str);
            this.mUnConstraintRecordingTimeText.getLayoutParams().width = dimensionPixelSize;
        }
    }

    public void addChapter(byte[] bArr, int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("addChapter: orientation=" + i);
        }
        if (this.mIsSequence) {
            BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
            bitmapFactory$Options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, bitmapFactory$Options);
            int i2 = bitmapFactory$Options.outHeight;
            int i3 = bitmapFactory$Options.outWidth;
            if (i2 < i3) {
                bitmapFactory$Options.inSampleSize = Math.round(i2 / this.mThumbnailSize);
            } else if (i3 < i2) {
                bitmapFactory$Options.inSampleSize = Math.round(i3 / this.mThumbnailSize);
            }
            bitmapFactory$Options.inJustDecodeBounds = false;
            bitmapFactory$Options.inPreferredConfig = Bitmap$Config.RGB_565;
            bitmapFactory$Options.inPurgeable = true;
            updateThumbnails(ThumbnailUtil.rotateThumbnail(ThumbnailUtils.extractThumbnail(BitmapFactory.decodeByteArray(bArr, 0, bArr.length, bitmapFactory$Options), this.mThumbnailSize, this.mThumbnailSize), i));
        }
    }

    private void updateThumbnails(Bitmap bitmap) {
        this.mIsThumbnailReady = true;
        setIndicator(this.mIsRecording);
        RoundRectImageView roundRectImageViewCreateRoundRectImageView = createRoundRectImageView(bitmap);
        if (this.mThumbnailCnt == 0) {
            this.mThumbnailContainer.removeAllViews();
            roundRectImageViewCreateRoundRectImageView.setRadius(this.mRadius, 0.0f, 0.0f, this.mRadius);
            this.mThumbnails[0] = bitmap;
        } else {
            roundRectImageViewCreateRoundRectImageView.setPadding(this.mThumbnailPadding, 0, 0, 0);
            if (this.mThumbnailCnt == 1) {
                this.mThumbnails[1] = bitmap;
            } else if (this.mThumbnailCnt >= this.mThumbnailMaxNum) {
                this.mThumbnailContainer.removeViewAt(0);
                RoundRectImageView roundRectImageViewCreateRoundRectImageView2 = createRoundRectImageView(this.mThumbnails[1]);
                roundRectImageViewCreateRoundRectImageView2.setRadius(this.mRadius, 0.0f, 0.0f, this.mRadius);
                this.mThumbnailContainer.removeViewAt(0);
                this.mThumbnailContainer.addView(roundRectImageViewCreateRoundRectImageView2, 0);
                int i = 0;
                while (i < this.mThumbnailMaxNum - 1) {
                    int i2 = i + 1;
                    this.mThumbnails[i] = this.mThumbnails[i2];
                    i = i2;
                }
            }
            this.mThumbnails[this.mThumbnailMaxNum - 1] = bitmap;
        }
        this.mThumbnailContainer.addView(roundRectImageViewCreateRoundRectImageView);
        this.mThumbnailCnt++;
        if (CamLog.VERBOSE) {
            CamLog.d("updateThumbnails: thumnailCnt=" + this.mThumbnailCnt);
        }
    }

    private RoundRectImageView createRoundRectImageView(Bitmap bitmap) {
        if (CamLog.VERBOSE) {
            CamLog.d("createRoundRectImageView");
        }
        RoundRectImageView roundRectImageView = new RoundRectImageView(getContext());
        roundRectImageView.setLayoutParams(this.mThumbnailParams);
        roundRectImageView.setImageBitmap(bitmap);
        roundRectImageView.setClickable(false);
        roundRectImageView.setFocusable(false);
        roundRectImageView.setFocusableInTouchMode(false);
        return roundRectImageView;
    }

    public void setIndicator(boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("setIndicator:" + z);
        }
        this.mIsRecording = z;
        if (this.mIsSequence) {
            setSequentialIndicator(z);
        } else {
            setUnconstraintIndicator(z);
        }
    }

    private void setUnconstraintIndicator(boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("setUnconstraintIndicator:" + z);
        }
        this.mUnConstraintIndicator.setBackgroundResource(z ? 2131231305 : 2131231304);
        this.mUnConstraintIndicator.setPadding(getResources().getDimensionPixelSize(2131165521), 0, getResources().getDimensionPixelSize(2131165521), 0);
    }

    private void setSequentialIndicator(boolean z) {
        int i;
        int i2;
        if (CamLog.VERBOSE) {
            CamLog.d("setSequentialIndicator:" + z);
        }
        if (z) {
            if (!this.mIsThumbnailReady) {
                return;
            }
        } else {
            this.mIsThumbnailReady = false;
        }
        if (z) {
            i = 2131231302;
            i2 = 0;
        } else {
            i = 2131231301;
            i2 = 8;
        }
        this.mTimeContainer.setBackgroundResource(i);
        this.mTimeContainer.setPadding(getResources().getDimensionPixelSize(2131165521), 0, getResources().getDimensionPixelSize(2131165521), 0);
        LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams) this.mTimeContainer.getLayoutParams();
        linearLayout$LayoutParams.width = -2;
        this.mTimeContainer.setLayoutParams(linearLayout$LayoutParams);
        this.mSequenceRec.setVisibility(i2);
    }

    private void resetThumbnails() {
        if (CamLog.VERBOSE) {
            CamLog.d("resetThumbnails");
        }
        this.mThumbnailCnt = 0;
        if (this.mThumbnailContainer != null) {
            this.mThumbnailContainer.removeAllViews();
        }
        addEmptyThumbnails();
    }

    private void addEmptyThumbnails() {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.mThumbnailSize, this.mThumbnailSize, Bitmap$Config.RGB_565);
        bitmapCreateBitmap.eraseColor(-16777216);
        RoundRectImageView roundRectImageViewCreateRoundRectImageView = createRoundRectImageView(bitmapCreateBitmap);
        roundRectImageViewCreateRoundRectImageView.setRadius(this.mRadius, 0.0f, 0.0f, this.mRadius);
        this.mThumbnailContainer.addView(roundRectImageViewCreateRoundRectImageView);
    }

    public void setOrientation(int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("setOrientation: " + i);
        }
        this.mDisplayOrientation = i;
        updateLayout();
    }

    private void updateLayoutParams(LinearLayout linearLayout) {
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = (RelativeLayout$LayoutParams) linearLayout.getLayoutParams();
        if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            relativeLayout$LayoutParams.removeRule(12);
            relativeLayout$LayoutParams.addRule(10, -1);
        } else {
            relativeLayout$LayoutParams.removeRule(10);
            relativeLayout$LayoutParams.addRule(12, -1);
        }
        linearLayout.requestLayout();
    }

    private void updateLayout() {
        float angle = RotationUtil.getAngle(this.mDisplayOrientation);
        LayoutOrientationResolver$LayoutOrientationType orientation = LayoutOrientationResolver.getInstance().getOrientation();
        if (orientation == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            angle += 90.0f;
        }
        if (this.mScreenAspect != null && this.mScreenAspect == LayoutDependencyResolver$ScreenAspect.EIGHTEEN_NINE) {
            if (orientation == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
                this.mContainer.setPadding(ResourceUtil.getDimensionPixelSize(getContext(), getContext().getPackageName(), 2131165531), 0, 0, 0);
            } else {
                this.mContainer.setPadding(0, 0, 0, ResourceUtil.getDimensionPixelSize(getContext(), getContext().getPackageName(), 2131165531));
            }
        }
        if (this.mUnConstraintIndicator != null) {
            updateLayoutParams(this.mUnConstraintIndicator);
            this.mUnConstraintIndicator.setRotation(angle);
            this.mUnConstraintIndicator.setPivotX(this.mPivotForRotationUnConstraint);
            this.mUnConstraintIndicator.setPivotY(this.mPivotForRotationUnConstraint);
        }
        if (this.mConstraintIndicator != null) {
            updateLayoutParams(this.mConstraintIndicator);
            this.mConstraintIndicator.setRotation(angle);
            this.mConstraintIndicator.setPivotX(this.mPivotForRotationConstraint);
            this.mConstraintIndicator.setPivotY(this.mPivotForRotationConstraint);
        }
        if (this.mSequenceIndicator != null) {
            updateLayoutParams(this.mSequenceIndicator);
            this.mSequenceIndicator.setRotation(angle);
            this.mSequenceIndicator.setPivotX(this.mPivotForRotationSequence);
            this.mSequenceIndicator.setPivotY(this.mPivotForRotationSequence);
        }
    }

    public void setVisible(boolean z) {
        if (z) {
            if (this.mIsConstraint) {
                this.mConstraintIndicator.setVisibility(0);
                this.mUnConstraintIndicator.setVisibility(8);
                this.mSequenceIndicator.setVisibility(8);
                return;
            } else if (this.mIsSequence) {
                this.mConstraintIndicator.setVisibility(8);
                this.mUnConstraintIndicator.setVisibility(8);
                this.mSequenceIndicator.setVisibility(0);
                return;
            } else {
                this.mConstraintIndicator.setVisibility(8);
                this.mUnConstraintIndicator.setVisibility(0);
                this.mSequenceIndicator.setVisibility(8);
                return;
            }
        }
        this.mConstraintIndicator.setVisibility(8);
        this.mUnConstraintIndicator.setVisibility(8);
        this.mSequenceIndicator.setVisibility(8);
    }

    public void setScreenAspect(LayoutDependencyResolver$ScreenAspect layoutDependencyResolver$ScreenAspect) {
        this.mScreenAspect = layoutDependencyResolver$ScreenAspect;
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.recordingindicator.RecordingTimeIndicator
    public void onTimeTicked(int i) {
        updateRecordingTime(i);
    }
}
