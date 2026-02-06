package com.sonyericsson.cameracommon.contentsview;

import android.os.Handler;
import android.os.Message;
import com.sonyericsson.android.camera.util.CamLog;

class ContentLoader$DataLoaderHander extends Handler {
    private static final int NOTIFY_CONTENT_CREATED = 1;
    private static final int NOTIFY_NO_CONTENT_LOADED = 0;
    final /* synthetic */ ContentLoader this$0;

    private ContentLoader$DataLoaderHander(ContentLoader contentLoader) {
        this.this$0 = contentLoader;
    }

    /* synthetic */ ContentLoader$DataLoaderHander(ContentLoader contentLoader, ContentLoader$1 contentLoader$1) {
        this(contentLoader);
    }

    static /* synthetic */ void access$1000(ContentLoader$DataLoaderHander contentLoader$DataLoaderHander, int i, ContentLoader$DataLoadResult contentLoader$DataLoadResult) {
        contentLoader$DataLoaderHander.notifyContentLoaded(i, contentLoader$DataLoadResult);
    }

    static /* synthetic */ void access$300(ContentLoader$DataLoaderHander contentLoader$DataLoaderHander) {
        contentLoader$DataLoaderHander.removeAllMessages();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                ContentLoader.access$700(this.this$0).onNoContentLoaded();
                break;
            case 1:
                if (CamLog.VERBOSE) {
                    CamLog.d("handleMessage for content creation.");
                }
                int i = message.arg1;
                ContentLoader$DataLoadResult contentLoader$DataLoadResult = (ContentLoader$DataLoadResult) message.obj;
                ContentLoader.access$500(this.this$0, ContentLoader$DataLoadResult.access$400(contentLoader$DataLoadResult).getContentInfo().mId);
                ContentLoader.access$700(this.this$0).onContentCreated(i, ContentLoader$DataLoadResult.access$400(contentLoader$DataLoadResult), ContentLoader$DataLoadResult.access$600(contentLoader$DataLoadResult));
                break;
        }
    }

    private void notifyContentLoaded(int i, ContentLoader$DataLoadResult contentLoader$DataLoadResult) {
        if (CamLog.VERBOSE) {
            CamLog.d("notifyContentLoaded() has been called.");
        }
        Message messageObtain = Message.obtain(this);
        if (contentLoader$DataLoadResult != null) {
            messageObtain.what = 1;
            messageObtain.obj = contentLoader$DataLoadResult;
        } else {
            messageObtain.what = 0;
        }
        messageObtain.arg1 = i;
        sendMessage(messageObtain);
    }

    private void removeAllMessages() {
        removeMessages(1);
        removeMessages(0);
    }
}
