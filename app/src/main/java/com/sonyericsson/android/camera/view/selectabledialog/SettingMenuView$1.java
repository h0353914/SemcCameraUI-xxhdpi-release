package com.sonyericsson.android.camera.view.selectabledialog;

import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.widget.CategorySwitch;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class SettingMenuView$1 implements Runnable {
    final /* synthetic */ SettingMenuView this$0;
    final /* synthetic */ SettingDialogItem val$item;
    final /* synthetic */ Object val$tag;

    SettingMenuView$1(SettingMenuView settingMenuView, Object obj, SettingDialogItem settingDialogItem) {
        this.this$0 = settingMenuView;
        this.val$tag = obj;
        this.val$item = settingDialogItem;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator<AbsDialogScrollView$ContentArrange> it = this.this$0.mArranges.iterator();
        int iComputeHeight = 0;
        while (it.hasNext()) {
            iComputeHeight += it.next().computeHeight();
        }
        this.this$0.scrollTo(0, iComputeHeight);
        if (this.val$tag == UserSettingKey.GEO_TAG) {
            View childAt = ((ViewGroup) this.val$item.getView()).getChildAt(1);
            if (childAt instanceof CategorySwitch) {
                childAt.callOnClick();
                return;
            }
            return;
        }
        if (this.val$tag == UserSettingKey.SIDE_SENSE) {
            View childAt2 = ((ViewGroup) this.val$item.getView()).getChildAt(1);
            if (childAt2 instanceof CategorySwitch) {
                childAt2.callOnClick();
                return;
            }
            return;
        }
        this.val$item.select(this.val$item.getItem());
    }
}
