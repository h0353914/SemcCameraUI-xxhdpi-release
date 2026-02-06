package com.sonyericsson.android.camera.view.selectabledialog;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;
import com.sonyericsson.android.camera.view.modeselector.CapturingModeAttributes;
import com.sonyericsson.android.camera.view.modeselector.Mode;
import com.sonyericsson.android.camera.view.modeselector.ModeLoader;
import com.sonyericsson.android.camera.view.modeselector.ModeLoader$OnModeListChangeListener;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import java.util.ArrayList;
import java.util.List;

public class ModeSelector extends AbsSelectableDialog implements ModeLoader$OnModeListChangeListener {
    protected static final boolean DEBUG = CamLog.VERBOSE;
    protected static final String TAG = "ModeSelector";
    private ModeLoader mModeLoader;
    private ModeSelector$OnModeSelectListener mOnModeSelectListener;

    static /* synthetic */ ModeLoader access$000(ModeSelector modeSelector) {
        return modeSelector.mModeLoader;
    }

    static /* synthetic */ ModeSelector$OnModeSelectListener access$100(ModeSelector modeSelector) {
        return modeSelector.mOnModeSelectListener;
    }

    public ModeSelector(Context context, AbsSelectableDialog$Params absSelectableDialog$Params, int i, boolean z) {
        super(context, absSelectableDialog$Params, z);
        ModeSelectorView modeSelectorView = new ModeSelectorView(context);
        modeSelectorView.setOnItemClickListener(new ModeSelector$OnItemClickListener(this, null));
        modeSelectorView.setup(true, absSelectableDialog$Params, this, -1, i, z);
        if (z) {
            modeSelectorView.setScrollStatus(ScrollContainer$Status.FULLSCREEN);
        }
        this.mDialogScrollView = modeSelectorView;
    }

    public void setOnModeSelectListener(ModeSelector$OnModeSelectListener modeSelector$OnModeSelectListener) {
        this.mOnModeSelectListener = modeSelector$OnModeSelectListener;
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialog.SettingDialogInterface
    public void open(ViewGroup viewGroup) {
        this.mParent = (FrameLayout) viewGroup;
        this.mParent.addView(this.mDialogScrollView);
        adjustAttachedContainer();
        adjustLayout();
        this.mModeLoader.addModeChangeListener(this);
    }

    public void setModeLoader(ModeLoader modeLoader) {
        this.mModeLoader = modeLoader;
    }

    @Override // com.sonyericsson.android.camera.view.modeselector.ModeLoader$OnModeListChangeListener
    public void onModeListChanged(List<Mode> list, List<CapturingModeAttributes> list2) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).isAvailable()) {
                arrayList.add(list2.get(i));
            }
        }
        ModeSelector$CapturingModeSelectorAdapter modeSelector$CapturingModeSelectorAdapter = new ModeSelector$CapturingModeSelectorAdapter(this, this.mContext);
        modeSelector$CapturingModeSelectorAdapter.updateItems(CapturingModeAttributes.toAttributesList(this.mContext, arrayList));
        if (this.mDialogScrollView != null) {
            addPanel(modeSelector$CapturingModeSelectorAdapter);
            adjustLayout();
            startOpenAnimation();
        }
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsSelectableDialog
    protected void onOrientationChanged(int i) {
        this.mDialogScrollView.setUiOrientation(i);
        if (this.mDialogScrollView.isAttachedToWindow()) {
            adjustAttachedContainer();
            adjustLayout();
        }
    }

    private void adjustAttachedContainer() {
        if (isPortrait()) {
            this.mSettingDialogStack.addBottomView();
            this.mSettingDialogStack.adjustContainer(false);
        } else {
            this.mSettingDialogStack.removeBottomView();
            this.mSettingDialogStack.adjustContainer(true);
        }
    }

    public Rect getMonochromeGlobalVisibleItemRect(boolean z) {
        View viewFindItemViewWithTag = this.mDialogScrollView.findItemViewWithTag(ModeSelectorInternalMode.DUAL_MONOCHROME.name());
        if (viewFindItemViewWithTag == null) {
            return null;
        }
        Rect rect = new Rect();
        viewFindItemViewWithTag.getGlobalVisibleRect(rect);
        int measuredWidth = this.mDialogScrollView.getContentLayout().getMeasuredWidth();
        int measuredHeight = this.mDialogScrollView.getContentLayout().getMeasuredHeight();
        if (z) {
            if (this.mOrientation == 2) {
                return new Rect(0, 0, rect.left, measuredWidth);
            }
            return new Rect(0, 0, rect.bottom, measuredWidth);
        }
        Rect viewFinderSize = LayoutDependencyResolver.getViewFinderSize(this.mContext);
        if (this.mOrientation == 2) {
            return new Rect(0, 0, rect.left - (measuredHeight - viewFinderSize.height()), measuredWidth);
        }
        return new Rect(0, 0, rect.bottom - (measuredHeight - viewFinderSize.height()), measuredWidth);
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsSelectableDialog
    public void closeImmediate() {
        this.mModeLoader.removeModeChangeListener(this);
        this.mSettingDialogStack.removeBottomView();
        this.mSettingDialogStack.adjustContainer(false);
        super.closeImmediate();
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsSelectableDialog, com.sonyericsson.android.camera.view.selectabledialog.ScrollContainer$OnScrollListener
    public void onScrollFinished(ScrollContainer$Status scrollContainer$Status) {
        if (scrollContainer$Status == ScrollContainer$Status.EXIT) {
            CameraApplication.getUiThreadHandler().post(new ModeSelector$1(this));
        }
    }
}
