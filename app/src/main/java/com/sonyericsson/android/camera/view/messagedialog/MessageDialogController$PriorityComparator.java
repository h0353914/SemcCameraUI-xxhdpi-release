package com.sonyericsson.android.camera.view.messagedialog;

import java.io.Serializable;
import java.util.Comparator;

class MessageDialogController$PriorityComparator implements Comparator<MessageDialogRequest>, Serializable {
    private MessageDialogController$PriorityComparator() {
    }

    /* synthetic */ MessageDialogController$PriorityComparator(MessageDialogController$1 messageDialogController$1) {
        this();
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(MessageDialogRequest messageDialogRequest, MessageDialogRequest messageDialogRequest2) {
        return compare2(messageDialogRequest, messageDialogRequest2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(MessageDialogRequest messageDialogRequest, MessageDialogRequest messageDialogRequest2) {
        int i = messageDialogRequest.mDialogId.priority.priority;
        int i2 = messageDialogRequest2.mDialogId.priority.priority;
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }
}
