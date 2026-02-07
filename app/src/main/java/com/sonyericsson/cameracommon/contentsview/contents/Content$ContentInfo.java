package com.sonyericsson.cameracommon.contentsview.contents;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Content$ContentInfo {
    public int mBucketId;
    public Content$ContentsType mContentType;
    public int mGroupedImage;
    public int mHeight;
    public long mId;
    public boolean mIsContainDetails;
    public boolean mIsMediaDataVerified;
    public boolean mIsVideoHdr;
    public String mMimeType;
    public int mOrientation;
    public String mOriginalPath;
    public Uri mOriginalUri;
    public int mPredictiveNum;
    public int mSomcType;
    public int mType;
    public int mWidth;
    public List<Long> mMediaStoreIds = new ArrayList();
    public boolean mIsInTrash = false;

    public Content$ContentInfo getSnapShot() {
        Content$ContentInfo content$ContentInfo = new Content$ContentInfo();
        content$ContentInfo.mId = this.mId;
        content$ContentInfo.mType = this.mType;
        content$ContentInfo.mOriginalUri = this.mOriginalUri;
        content$ContentInfo.mOriginalPath = this.mOriginalPath;
        content$ContentInfo.mOrientation = this.mOrientation;
        content$ContentInfo.mWidth = this.mWidth;
        content$ContentInfo.mHeight = this.mHeight;
        content$ContentInfo.mMimeType = this.mMimeType != null ? this.mMimeType.toString() : null;
        content$ContentInfo.mGroupedImage = this.mGroupedImage;
        content$ContentInfo.mSomcType = this.mSomcType;
        content$ContentInfo.mIsVideoHdr = this.mIsVideoHdr;
        content$ContentInfo.mBucketId = this.mBucketId;
        content$ContentInfo.mContentType = this.mContentType;
        content$ContentInfo.mIsContainDetails = this.mIsContainDetails;
        content$ContentInfo.mIsInTrash = this.mIsInTrash;
        content$ContentInfo.mPredictiveNum = this.mPredictiveNum;
        content$ContentInfo.mIsMediaDataVerified = this.mIsMediaDataVerified;
        if (this.mContentType == Content$ContentsType.BURST) {
            Iterator<Long> it = this.mMediaStoreIds.iterator();
            while (it.hasNext()) {
                content$ContentInfo.mMediaStoreIds.add(it.next());
            }
        }
        return content$ContentInfo;
    }
}
