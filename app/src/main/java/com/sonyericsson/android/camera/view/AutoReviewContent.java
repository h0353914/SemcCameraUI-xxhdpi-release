package com.sonyericsson.android.camera.view;

import android.net.Uri;
import android.view.View$OnClickListener;

public class AutoReviewContent {
    public View$OnClickListener mClickListener = null;
    public byte[] mData;
    public long mDuration;
    public AutoReviewController$OnAutoReviewEventListener mEventListener;
    public boolean mIsPhoto;
    public boolean mIsReverse;
    public Uri mUri;
}
