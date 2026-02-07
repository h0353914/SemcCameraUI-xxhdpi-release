package com.sonyericsson.android.camera.controller.album;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.contentsview.PredictiveCaptureStoreInfo;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonyericsson.cameracommon.utility.CommonUtility$DefaultGallerySetting;
import com.sonymobile.cameracommon.research.ResearchUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AlbumLauncher {
    public static final String EXTRA_BURST_BUCKETID = "burst_bucketId";
    public static final String TAG = "AlbumLauncher";

    public static void launchAlbum(Activity activity, Uri uri, String str, int i, boolean z) {
        launchAlbum(activity, uri, str, i, z, true);
    }

    public static void launchAlbum(Activity activity, Uri uri, String str, int i, boolean z, boolean z2) {
        launchAlbum(activity, uri, str, i, z, z2, null);
    }

    public static void launchAlbum(Activity activity, Uri uri, String str, int i, boolean z, boolean z2, PredictiveCaptureStoreInfo predictiveCaptureStoreInfo) {
        if (CamLog.DEBUG) {
            CamLog.d("launchAlbum(" + uri + ", " + str + ", " + i + ", " + z + ", " + z2 + ", " + predictiveCaptureStoreInfo + ")");
        }
        Intent intent = new Intent("com.android.camera.action.REVIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        if (AlbumLauncher$MimeType.fromText(str) == AlbumLauncher$MimeType.MPO) {
            intent.setDataAndType(uri, AlbumLauncher$MimeType.PHOTO.mText);
        } else {
            intent.setDataAndType(uri, str);
        }
        CommonUtility$DefaultGallerySetting defaultGallery = CommonUtility.getDefaultGallery(activity.getApplicationContext(), uri, str);
        if (CamLog.DEBUG) {
            CamLog.d("launchAlbum defaultGallery " + defaultGallery);
        }
        switch (AlbumLauncher$1.$SwitchMap$com$sonyericsson$cameracommon$utility$CommonUtility$DefaultGallerySetting[defaultGallery.ordinal()]) {
            case 1:
            case 2:
                if (z) {
                    intent.putExtra("burst_bucketId", i);
                }
                if (z2) {
                    intent.putExtra("com.sonyericsson.album.intent.extra.FAST_VIEW_MODE", true);
                }
                if (predictiveCaptureStoreInfo != null) {
                    intent.putExtra("com.sonymobile.album.intent.extra.PREDICTIVE_CAPTURE_COUNT", predictiveCaptureStoreInfo.getCaptureNum());
                }
                break;
        }
        if (CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent)) {
            activity.startActivityForResult(intent, 8);
        } else {
            launchReviewApp(activity, uri, str, 8);
        }
        ResearchUtil.getInstance().setViewerLaunched();
    }

    public static void launchAlbumSecure(Activity activity, List<Uri> list, List<String> list2, PredictiveCaptureStoreInfo predictiveCaptureStoreInfo, long[] jArr) {
        if (list.size() == 0 || list2.size() == 0) {
            throw new RuntimeException("album image uri is empty.");
        }
        if (CamLog.DEBUG) {
            CamLog.d("launchAlbumSecure(" + list + ", " + list2 + ", " + jArr + ", " + predictiveCaptureStoreInfo + ")");
        }
        Intent intent = new Intent("com.android.camera.action.REVIEW");
        intent.setDataAndType(list.get(0), list2.get(0));
        intent.addCategory("android.intent.category.DEFAULT");
        switch (AlbumLauncher$1.$SwitchMap$com$sonyericsson$cameracommon$utility$CommonUtility$DefaultGallerySetting[CommonUtility.getDefaultGallery(activity.getApplicationContext(), list.get(0), list2.get(0)).ordinal()]) {
            case 1:
                intent.putExtra("com.sonyericsson.album.intent.extra.FAST_VIEW_MODE", true);
                if (predictiveCaptureStoreInfo != null) {
                    intent.putExtra("com.sonymobile.album.intent.extra.PREDICTIVE_CAPTURE_COUNT", predictiveCaptureStoreInfo.getCaptureNum());
                }
                break;
            case 2:
                intent.putExtra("com.sonyericsson.album.intent.extra.FAST_VIEW_MODE", true);
                if (predictiveCaptureStoreInfo != null) {
                    intent.putExtra("com.sonymobile.album.intent.extra.PREDICTIVE_CAPTURE_COUNT", predictiveCaptureStoreInfo.getCaptureNum());
                }
                intent.putExtra("com.google.android.apps.photos.api.secure_mode_ids", jArr);
                intent.putExtra("com.google.android.apps.photos.api.secure_mode", true);
                break;
            case 3:
                intent.putExtra("com.google.android.apps.photos.api.secure_mode_ids", jArr);
                intent.putExtra("com.google.android.apps.photos.api.secure_mode", true);
                break;
        }
        if (CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent)) {
            activity.startActivityForResult(intent, 9);
        } else {
            launchReviewApp(activity, list.get(0), list2.get(0), 9);
        }
        ResearchUtil.getInstance().setViewerLaunched();
    }

    private static void launchReviewApp(Activity activity, Uri uri, String str, int i) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uri, str);
        try {
            activity.startActivityForResult(intent, i);
        } catch (ActivityNotFoundException unused) {
            if (CamLog.DEBUG) {
                CamLog.d("There is no activity which accepts action:Intent.ACTION_VIEW");
            }
        }
    }
}
