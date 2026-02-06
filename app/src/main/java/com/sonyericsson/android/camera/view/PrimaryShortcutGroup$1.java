package com.sonyericsson.android.camera.view;

import android.view.View;
import android.view.View$OnClickListener;
import com.sonyericsson.android.camera.configuration.UserSettingKey;

class PrimaryShortcutGroup$1 implements View$OnClickListener {
    final /* synthetic */ PrimaryShortcutGroup this$0;

    PrimaryShortcutGroup$1(PrimaryShortcutGroup primaryShortcutGroup) {
        this.this$0 = primaryShortcutGroup;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (PrimaryShortcutGroup.access$000(this.this$0).isShortcutButtonClickable()) {
            int id = view.getId();
            if (id == 2131296371) {
                if (view.isShown()) {
                    PrimaryShortcutGroup.access$000(this.this$0).openSettingMenuDialog();
                    return;
                }
                return;
            }
            switch (id) {
                case 2131296505:
                    PrimaryShortcutGroup.access$000(this.this$0).openShorcutDialog(ViewFinder$UiComponentKind.ASPECT_RATIO_DIALOG);
                    break;
                case 2131296506:
                    view.setOnClickListener(null);
                    PrimaryShortcutGroup.access$000(this.this$0).switchCamera();
                    break;
                case 2131296507:
                    PrimaryShortcutGroup.access$000(this.this$0).openShorcutDialog(ViewFinder$UiComponentKind.FLASH_DIALOG);
                    break;
                case 2131296508:
                    if (!UserSettingKey.FUSION_MODE.isSelectable()) {
                        PrimaryShortcutGroup.access$000(this.this$0).showRestrictMessageDialog(UserSettingKey.FUSION_MODE);
                    } else {
                        PrimaryShortcutGroup.access$000(this.this$0).openShorcutDialog(ViewFinder$UiComponentKind.FUSION_MODE_DIALOG);
                    }
                    break;
                default:
                    switch (id) {
                        case 2131296510:
                            PrimaryShortcutGroup.access$000(this.this$0).openShorcutDialog(ViewFinder$UiComponentKind.HDR_DIALOG);
                            break;
                        case 2131296511:
                            PrimaryShortcutGroup.access$000(this.this$0).openShorcutDialog(ViewFinder$UiComponentKind.SELF_TIMER_DIALOG);
                            break;
                        case 2131296512:
                            PrimaryShortcutGroup.access$000(this.this$0).switchSemiAutoAvailability();
                            break;
                        case 2131296513:
                            if (!UserSettingKey.VIDEO_HDR.isSelectable()) {
                                PrimaryShortcutGroup.access$000(this.this$0).showRestrictMessageDialog(UserSettingKey.VIDEO_HDR);
                            } else {
                                PrimaryShortcutGroup.access$000(this.this$0).openShorcutDialog(ViewFinder$UiComponentKind.VIDEO_HDR_DIALOG);
                            }
                            break;
                    }
                    break;
            }
        }
    }
}
