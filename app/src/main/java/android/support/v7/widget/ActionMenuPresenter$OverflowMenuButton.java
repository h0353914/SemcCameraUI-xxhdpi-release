package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v7.appcompat.R$attr;

class ActionMenuPresenter$OverflowMenuButton extends AppCompatImageView implements ActionMenuView$ActionMenuChildView {
    private final float[] mTempPts;
    final /* synthetic */ ActionMenuPresenter this$0;

    @Override // android.support.v7.widget.ActionMenuView$ActionMenuChildView
    public boolean needsDividerAfter() {
        return false;
    }

    @Override // android.support.v7.widget.ActionMenuView$ActionMenuChildView
    public boolean needsDividerBefore() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionMenuPresenter$OverflowMenuButton(ActionMenuPresenter actionMenuPresenter, Context context) {
        super(context, null, R$attr.actionOverflowButtonStyle);
        this.this$0 = actionMenuPresenter;
        this.mTempPts = new float[2];
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        TooltipCompat.setTooltipText(this, getContentDescription());
        setOnTouchListener(new ActionMenuPresenter$OverflowMenuButton$1(this, this, actionMenuPresenter));
    }

    @Override // android.view.View
    public boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.this$0.showOverflowMenu();
        return true;
    }

    @Override // android.widget.ImageView
    protected boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int iMax = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            DrawableCompat.setHotspotBounds(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
        }
        return frame;
    }
}
