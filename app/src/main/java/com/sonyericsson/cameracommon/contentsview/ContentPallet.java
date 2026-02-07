package com.sonyericsson.cameracommon.contentsview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.utility.CommonUtility;

/* JADX INFO: loaded from: classes.dex */
public class ContentPallet extends RelativeLayout {
    private static final int INSERTANIMATION_DURATION = 300;
    private static final float INSERTANIMATION_FADE_END = 1.0f;
    private static final float INSERTANIMATION_FADE_START = 0.0f;
    private static final float INSERTANIMATION_SCALE_END = 1.0f;
    private static final float INSERTANIMATION_SCALE_START = 0.7f;
    public static final String TAG = "ContentPallet";
    private static final long intervalTime = 3000;
    private long curTime;
    private final ContentPallet$ClickListener mClickListener;
    private Content mContent;
    private boolean mIsRequestHide;
    private int mRequestId;
    private Bitmap mThumbnail;
    private ContentPallet$ThumbnailStateListener mThumbnailStateListener;

    static /* synthetic */ long access$100(ContentPallet contentPallet) {
        return contentPallet.curTime;
    }

    static /* synthetic */ Content access$200(ContentPallet contentPallet) {
        return contentPallet.mContent;
    }

    static /* synthetic */ ContentPallet$ThumbnailStateListener access$300(ContentPallet contentPallet) {
        return contentPallet.mThumbnailStateListener;
    }

    public ContentPallet(Context context) {
        super(context);
        this.curTime = 0L;
        this.mThumbnail = null;
        this.mClickListener = new ContentPallet$ClickListener(this, null);
    }

    public ContentPallet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.curTime = 0L;
        this.mThumbnail = null;
        this.mClickListener = new ContentPallet$ClickListener(this, null);
    }

    void initialize(int i, ContentPallet$ThumbnailStateListener contentPallet$ThumbnailStateListener) {
        if (CamLog.VERBOSE) {
            CamLog.d("setRequestId() has been called. id = " + i);
        }
        this.mRequestId = i;
        this.mThumbnailStateListener = contentPallet$ThumbnailStateListener;
        findViewById(2131296369).setOnClickListener(this.mClickListener);
    }

    void release() {
        if (this.mContent != null) {
            if (this.mThumbnail != null && !this.mThumbnail.isRecycled()) {
                this.mThumbnail.recycle();
                this.mThumbnail = null;
            }
            this.mContent = null;
        }
        findViewById(2131296369).setOnClickListener(null);
    }

    public int getRequestId() {
        return this.mRequestId;
    }

    void set(Content content, Bitmap bitmap) {
        View viewInflate;
        if (CamLog.VERBOSE) {
            CamLog.d("set() has been called.");
        }
        this.mContent = content;
        ProgressBar progressBar = (ProgressBar) findViewById(2131296367);
        progressBar.setVisibility(4);
        progressBar.setOnClickListener(null);
        ImageView imageView = (ImageView) findViewById(2131296368);
        this.mThumbnail = bitmap;
        if (this.mThumbnail != null) {
            imageView.setImageBitmap(this.mThumbnail);
        } else {
            RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(imageView.getLayoutParams());
            relativeLayout$LayoutParams.addRule(13);
            ImageView imageView2 = new ImageView(getContext());
            imageView2.setLayoutParams(relativeLayout$LayoutParams);
            addView(imageView2);
            imageView2.setImageResource(2131231254);
        }
        if (content.shouldShowPlayableIcon()) {
            ImageView imageView3 = new ImageView(getContext());
            addView(imageView3);
            imageView3.getLayoutParams().width = -2;
            imageView3.getLayoutParams().height = -2;
            ((RelativeLayout$LayoutParams) imageView3.getLayoutParams()).addRule(13);
            imageView3.setImageResource(content.getPlayIconResourceId());
        }
        if (content.shouldShowExtraIcon()) {
            LayoutInflater layoutInflater = ((Activity) getContext()).getLayoutInflater();
            if (layoutInflater != null) {
                if (CommonUtility.isCoreCameraApp((Activity) getContext())) {
                    viewInflate = layoutInflater.inflate(2131492911, this);
                } else {
                    viewInflate = layoutInflater.inflate(2131492910, this);
                }
                ((ImageView) viewInflate.findViewById(2131296366)).setBackgroundResource(content.getExtraIconResourceId());
            } else {
                CamLog.w("could not get inflater.");
            }
        }
        findViewById(2131296369).setVisibility(0);
        if (this.mIsRequestHide) {
            setVisibility(4);
        }
    }

    public void setProvisionalContent() {
        ((ImageView) findViewById(2131296368)).setImageDrawable(new ColorDrawable(getContext().getColor(2131099768)));
        findViewById(2131296369).setVisibility(0);
    }

    void enableClick() {
        findViewById(2131296369).setOnClickListener(this.mClickListener);
        findViewById(2131296367).setClickable(true);
    }

    void disableClick() {
        findViewById(2131296369).setOnClickListener(null);
        findViewById(2131296367).setClickable(false);
    }

    public boolean hasContent() {
        return this.mContent != null;
    }

    public Content getContent() {
        return this.mContent;
    }

    public void cancelRequestHide() {
        this.mIsRequestHide = false;
    }

    public boolean isProvisionalContent() {
        return (hasContent() || ((ImageView) findViewById(2131296368)).getDrawable() == null) ? false : true;
    }
}
