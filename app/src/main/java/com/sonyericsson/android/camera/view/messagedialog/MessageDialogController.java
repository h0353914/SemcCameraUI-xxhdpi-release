package com.sonyericsson.android.camera.view.messagedialog;

import android.app.Activity;
import android.content.Context;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class MessageDialogController {
    private static String TAG = "MessageDialogController";
    private static final boolean TRACE = true;
    private final Context mContext;
    private DialogId mCurrentDialogId;
    private final MessageSettings mMessageSettings;
    private final MessageDialogController$MessageDialogOnCancelListener mOnCancelListener;
    private final MessageDialogController$MessageDialogOnClickListener mOnClickNegativeListener;
    private final MessageDialogController$MessageDialogOnClickListener mOnClickPositiveListener;
    private final MessageDialogController$MessageDialogOnDismissListener mOnDismissListener;
    private final MessageDialogController$MessageDialogOnOpenListener mOnOpenListener;
    private final List<MessageDialogRequest> mMessageList = new ArrayList();
    private final List<RotatableDialog> mDialogList = new ArrayList();
    private int mSensorOrientation = 0;

    static /* synthetic */ void access$100(String str) {
        trace(str);
    }

    static /* synthetic */ MessageDialogController$MessageDialogOnClickListener access$200(MessageDialogController messageDialogController) {
        return messageDialogController.mOnClickPositiveListener;
    }

    static /* synthetic */ MessageDialogController$MessageDialogOnClickListener access$300(MessageDialogController messageDialogController) {
        return messageDialogController.mOnClickNegativeListener;
    }

    static /* synthetic */ MessageDialogController$MessageDialogOnCancelListener access$400(MessageDialogController messageDialogController) {
        return messageDialogController.mOnCancelListener;
    }

    static /* synthetic */ MessageDialogController$MessageDialogOnDismissListener access$500(MessageDialogController messageDialogController) {
        return messageDialogController.mOnDismissListener;
    }

    static /* synthetic */ List access$600(MessageDialogController messageDialogController) {
        return messageDialogController.mDialogList;
    }

    static /* synthetic */ DialogId access$702(MessageDialogController messageDialogController, DialogId dialogId) {
        messageDialogController.mCurrentDialogId = dialogId;
        return dialogId;
    }

    static /* synthetic */ void access$800(MessageDialogController messageDialogController) {
        messageDialogController.show();
    }

    private static void trace(String str) {
        CamLog.d(str);
    }

    public MessageDialogController(Activity activity, MessageSettings messageSettings, MessageDialogController$MessageDialogOnClickListener messageDialogController$MessageDialogOnClickListener, MessageDialogController$MessageDialogOnClickListener messageDialogController$MessageDialogOnClickListener2, MessageDialogController$MessageDialogOnCancelListener messageDialogController$MessageDialogOnCancelListener, MessageDialogController$MessageDialogOnDismissListener messageDialogController$MessageDialogOnDismissListener, MessageDialogController$MessageDialogOnOpenListener messageDialogController$MessageDialogOnOpenListener) {
        this.mContext = activity;
        this.mMessageSettings = messageSettings;
        this.mOnClickPositiveListener = messageDialogController$MessageDialogOnClickListener;
        this.mOnClickNegativeListener = messageDialogController$MessageDialogOnClickListener2;
        this.mOnCancelListener = messageDialogController$MessageDialogOnCancelListener;
        this.mOnDismissListener = messageDialogController$MessageDialogOnDismissListener;
        this.mOnOpenListener = messageDialogController$MessageDialogOnOpenListener;
    }

    public void setSensorOrientation(int i) {
        this.mSensorOrientation = i;
        Iterator<RotatableDialog> it = this.mDialogList.iterator();
        while (it.hasNext()) {
            it.next().setOrientation(i);
        }
    }

    public boolean request(MessageDialogRequest messageDialogRequest) {
        trace("request() E DLG_ID = " + messageDialogRequest.mDialogId);
        if (this.mCurrentDialogId != null && this.mCurrentDialogId.priority == MessageDialogController$Priority.IMMEDIATELY) {
            trace("request() current showing");
            return true;
        }
        if (isNeverShow(messageDialogRequest.mDialogId)) {
            trace("request() isNeverShow = true");
            return false;
        }
        this.mMessageList.add(messageDialogRequest);
        Collections.sort(this.mMessageList, new MessageDialogController$PriorityComparator(null));
        show();
        trace("request() X DLG_ID = " + messageDialogRequest.mDialogId);
        return true;
    }

    private void show() {
        trace("show() E");
        if (this.mMessageList.isEmpty()) {
            return;
        }
        if (this.mMessageList.get(0).mDialogId.priority != MessageDialogController$Priority.IMMEDIATELY && this.mCurrentDialogId != null) {
            trace("show() Message is shown");
            return;
        }
        this.mDialogList.add(this.mMessageList.get(0).mDialogId.builderType.create(this.mContext, this.mSensorOrientation, this.mMessageSettings, this.mMessageList.get(0), new MessageDialogController$OnClickPositiveListener(this, this.mMessageList.get(0)), new MessageDialogController$OnClickNegativeListener(this, this.mMessageList.get(0)), new MessageDialogController$OnCancelListener(this, this.mMessageList.get(0)), new MessageDialogController$OnDismissListener(this, this.mMessageList.get(0))));
        this.mOnOpenListener.onOpen(this.mMessageList.get(0));
        this.mDialogList.get(this.mDialogList.size() - 1).show();
        this.mCurrentDialogId = this.mMessageList.get(0).mDialogId;
        this.mMessageList.remove(0);
        trace("show() X");
    }

    private boolean isNeverShow(DialogId dialogId) {
        if (dialogId.getMessageType() != MessageType.NO_MESSAGE) {
            return this.mMessageSettings.isNeverShow(dialogId.getMessageType());
        }
        return false;
    }

    public void clear() {
        trace("clear()");
        for (RotatableDialog rotatableDialog : this.mDialogList) {
            rotatableDialog.setOnDismissListener(null);
            rotatableDialog.dismiss();
        }
        this.mDialogList.clear();
        this.mMessageList.clear();
        this.mCurrentDialogId = null;
    }

    public void removeDialogsInList(List<DialogId> list) {
        if (this.mCurrentDialogId != null && list.contains(this.mCurrentDialogId)) {
            trace("removeDialogsInList dismiss = " + this.mCurrentDialogId);
            this.mDialogList.get(0).setOnDismissListener(null);
            this.mDialogList.get(0).dismiss();
            this.mCurrentDialogId = null;
        }
        Iterator<MessageDialogRequest> it = this.mMessageList.iterator();
        while (it.hasNext()) {
            MessageDialogRequest next = it.next();
            if (list.contains(next.mDialogId)) {
                it.remove();
                trace("removeDialogsInList remove = " + next.mDialogId);
            }
        }
    }

    public boolean isOpened() {
        if (this.mCurrentDialogId != null) {
            trace("isOpened() true");
            return true;
        }
        trace("isOpened() false");
        return false;
    }

    public boolean isCurrentDialogInList(List<DialogId> list) {
        if (this.mCurrentDialogId == null) {
            return false;
        }
        trace("isCurrentDialogInList = " + list.contains(this.mCurrentDialogId));
        return list.contains(this.mCurrentDialogId);
    }
}
