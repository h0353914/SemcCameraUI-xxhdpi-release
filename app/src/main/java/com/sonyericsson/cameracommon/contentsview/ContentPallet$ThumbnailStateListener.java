package com.sonyericsson.cameracommon.contentsview;

import com.sonyericsson.cameracommon.contentsview.contents.Content;

public interface ContentPallet$ThumbnailStateListener {
    void onThumbnailClicked(Content content);

    void onThumbnailCreated(Content content);
}
