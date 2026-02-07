package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.DialogInterface$OnDismissListener;
import android.content.DialogInterface$OnKeyListener;
import android.content.DialogInterface$OnMultiChoiceClickListener;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemSelectedListener;
import android.widget.ListAdapter;
import android.widget.SimpleCursorAdapter;

/* JADX INFO: loaded from: classes.dex */
public class AlertController$AlertParams {
    public ListAdapter mAdapter;
    public boolean[] mCheckedItems;
    public final Context mContext;
    public Cursor mCursor;
    public View mCustomTitleView;
    public boolean mForceInverseBackground;
    public Drawable mIcon;
    public final LayoutInflater mInflater;
    public String mIsCheckedColumn;
    public boolean mIsMultiChoice;
    public boolean mIsSingleChoice;
    public CharSequence[] mItems;
    public String mLabelColumn;
    public CharSequence mMessage;
    public Drawable mNegativeButtonIcon;
    public DialogInterface$OnClickListener mNegativeButtonListener;
    public CharSequence mNegativeButtonText;
    public Drawable mNeutralButtonIcon;
    public DialogInterface$OnClickListener mNeutralButtonListener;
    public CharSequence mNeutralButtonText;
    public DialogInterface$OnCancelListener mOnCancelListener;
    public DialogInterface$OnMultiChoiceClickListener mOnCheckboxClickListener;
    public DialogInterface$OnClickListener mOnClickListener;
    public DialogInterface$OnDismissListener mOnDismissListener;
    public AdapterView$OnItemSelectedListener mOnItemSelectedListener;
    public DialogInterface$OnKeyListener mOnKeyListener;
    public AlertController$AlertParams$OnPrepareListViewListener mOnPrepareListViewListener;
    public Drawable mPositiveButtonIcon;
    public DialogInterface$OnClickListener mPositiveButtonListener;
    public CharSequence mPositiveButtonText;
    public CharSequence mTitle;
    public View mView;
    public int mViewLayoutResId;
    public int mViewSpacingBottom;
    public int mViewSpacingLeft;
    public int mViewSpacingRight;
    public int mViewSpacingTop;
    public int mIconId = 0;
    public int mIconAttrId = 0;
    public boolean mViewSpacingSpecified = false;
    public int mCheckedItem = -1;
    public boolean mRecycleOnMeasure = true;
    public boolean mCancelable = true;

    public AlertController$AlertParams(Context context) {
        this.mContext = context;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public void apply(AlertController alertController) {
        if (this.mCustomTitleView != null) {
            alertController.setCustomTitle(this.mCustomTitleView);
        } else {
            if (this.mTitle != null) {
                alertController.setTitle(this.mTitle);
            }
            if (this.mIcon != null) {
                alertController.setIcon(this.mIcon);
            }
            if (this.mIconId != 0) {
                alertController.setIcon(this.mIconId);
            }
            if (this.mIconAttrId != 0) {
                alertController.setIcon(alertController.getIconAttributeResId(this.mIconAttrId));
            }
        }
        if (this.mMessage != null) {
            alertController.setMessage(this.mMessage);
        }
        if (this.mPositiveButtonText != null || this.mPositiveButtonIcon != null) {
            alertController.setButton(-1, this.mPositiveButtonText, this.mPositiveButtonListener, null, this.mPositiveButtonIcon);
        }
        if (this.mNegativeButtonText != null || this.mNegativeButtonIcon != null) {
            alertController.setButton(-2, this.mNegativeButtonText, this.mNegativeButtonListener, null, this.mNegativeButtonIcon);
        }
        if (this.mNeutralButtonText != null || this.mNeutralButtonIcon != null) {
            alertController.setButton(-3, this.mNeutralButtonText, this.mNeutralButtonListener, null, this.mNeutralButtonIcon);
        }
        if (this.mItems != null || this.mCursor != null || this.mAdapter != null) {
            createListView(alertController);
        }
        if (this.mView != null) {
            if (this.mViewSpacingSpecified) {
                alertController.setView(this.mView, this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
                return;
            } else {
                alertController.setView(this.mView);
                return;
            }
        }
        if (this.mViewLayoutResId != 0) {
            alertController.setView(this.mViewLayoutResId);
        }
    }

    private void createListView(AlertController alertController) {
        int i;
        ListAdapter alertController$CheckedItemAdapter;
        AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) this.mInflater.inflate(alertController.mListLayout, (ViewGroup) null);
        if (this.mIsMultiChoice) {
            if (this.mCursor == null) {
                alertController$CheckedItemAdapter = new AlertController$AlertParams$1(this, this.mContext, alertController.mMultiChoiceItemLayout, 16908308, this.mItems, alertController$RecycleListView);
            } else {
                alertController$CheckedItemAdapter = new AlertController$AlertParams$2(this, this.mContext, this.mCursor, false, alertController$RecycleListView, alertController);
            }
        } else {
            if (this.mIsSingleChoice) {
                i = alertController.mSingleChoiceItemLayout;
            } else {
                i = alertController.mListItemLayout;
            }
            int i2 = i;
            if (this.mCursor != null) {
                alertController$CheckedItemAdapter = new SimpleCursorAdapter(this.mContext, i2, this.mCursor, new String[]{this.mLabelColumn}, new int[]{16908308});
            } else if (this.mAdapter != null) {
                alertController$CheckedItemAdapter = this.mAdapter;
            } else {
                alertController$CheckedItemAdapter = new AlertController$CheckedItemAdapter(this.mContext, i2, 16908308, this.mItems);
            }
        }
        if (this.mOnPrepareListViewListener != null) {
            this.mOnPrepareListViewListener.onPrepareListView(alertController$RecycleListView);
        }
        alertController.mAdapter = alertController$CheckedItemAdapter;
        alertController.mCheckedItem = this.mCheckedItem;
        if (this.mOnClickListener != null) {
            alertController$RecycleListView.setOnItemClickListener(new AlertController$AlertParams$3(this, alertController));
        } else if (this.mOnCheckboxClickListener != null) {
            alertController$RecycleListView.setOnItemClickListener(new AlertController$AlertParams$4(this, alertController$RecycleListView, alertController));
        }
        if (this.mOnItemSelectedListener != null) {
            alertController$RecycleListView.setOnItemSelectedListener(this.mOnItemSelectedListener);
        }
        if (this.mIsSingleChoice) {
            alertController$RecycleListView.setChoiceMode(1);
        } else if (this.mIsMultiChoice) {
            alertController$RecycleListView.setChoiceMode(2);
        }
        alertController.mListView = alertController$RecycleListView;
    }
}
