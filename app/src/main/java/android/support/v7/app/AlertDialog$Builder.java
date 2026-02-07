package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.DialogInterface$OnDismissListener;
import android.content.DialogInterface$OnKeyListener;
import android.content.DialogInterface$OnMultiChoiceClickListener;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.support.annotation.ArrayRes;
import android.support.annotation.AttrRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.AdapterView$OnItemSelectedListener;
import android.widget.ListAdapter;

/* JADX INFO: loaded from: classes.dex */
public class AlertDialog$Builder {
    private final AlertController$AlertParams P;
    private final int mTheme;

    public AlertDialog$Builder(@NonNull Context context) {
        this(context, AlertDialog.resolveDialogTheme(context, 0));
    }

    public AlertDialog$Builder(@NonNull Context context, @StyleRes int i) {
        this.P = new AlertController$AlertParams(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(context, i)));
        this.mTheme = i;
    }

    @NonNull
    public Context getContext() {
        return this.P.mContext;
    }

    public AlertDialog$Builder setTitle(@StringRes int i) {
        this.P.mTitle = this.P.mContext.getText(i);
        return this;
    }

    public AlertDialog$Builder setTitle(@Nullable CharSequence charSequence) {
        this.P.mTitle = charSequence;
        return this;
    }

    public AlertDialog$Builder setCustomTitle(@Nullable View view) {
        this.P.mCustomTitleView = view;
        return this;
    }

    public AlertDialog$Builder setMessage(@StringRes int i) {
        this.P.mMessage = this.P.mContext.getText(i);
        return this;
    }

    public AlertDialog$Builder setMessage(@Nullable CharSequence charSequence) {
        this.P.mMessage = charSequence;
        return this;
    }

    public AlertDialog$Builder setIcon(@DrawableRes int i) {
        this.P.mIconId = i;
        return this;
    }

    public AlertDialog$Builder setIcon(@Nullable Drawable drawable) {
        this.P.mIcon = drawable;
        return this;
    }

    public AlertDialog$Builder setIconAttribute(@AttrRes int i) {
        TypedValue typedValue = new TypedValue();
        this.P.mContext.getTheme().resolveAttribute(i, typedValue, true);
        this.P.mIconId = typedValue.resourceId;
        return this;
    }

    public AlertDialog$Builder setPositiveButton(@StringRes int i, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.P.mPositiveButtonText = this.P.mContext.getText(i);
        this.P.mPositiveButtonListener = dialogInterface$OnClickListener;
        return this;
    }

    public AlertDialog$Builder setPositiveButton(CharSequence charSequence, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.P.mPositiveButtonText = charSequence;
        this.P.mPositiveButtonListener = dialogInterface$OnClickListener;
        return this;
    }

    public AlertDialog$Builder setPositiveButtonIcon(Drawable drawable) {
        this.P.mPositiveButtonIcon = drawable;
        return this;
    }

    public AlertDialog$Builder setNegativeButton(@StringRes int i, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.P.mNegativeButtonText = this.P.mContext.getText(i);
        this.P.mNegativeButtonListener = dialogInterface$OnClickListener;
        return this;
    }

    public AlertDialog$Builder setNegativeButton(CharSequence charSequence, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.P.mNegativeButtonText = charSequence;
        this.P.mNegativeButtonListener = dialogInterface$OnClickListener;
        return this;
    }

    public AlertDialog$Builder setNegativeButtonIcon(Drawable drawable) {
        this.P.mNegativeButtonIcon = drawable;
        return this;
    }

    public AlertDialog$Builder setNeutralButton(@StringRes int i, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.P.mNeutralButtonText = this.P.mContext.getText(i);
        this.P.mNeutralButtonListener = dialogInterface$OnClickListener;
        return this;
    }

    public AlertDialog$Builder setNeutralButton(CharSequence charSequence, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.P.mNeutralButtonText = charSequence;
        this.P.mNeutralButtonListener = dialogInterface$OnClickListener;
        return this;
    }

    public AlertDialog$Builder setNeutralButtonIcon(Drawable drawable) {
        this.P.mNeutralButtonIcon = drawable;
        return this;
    }

    public AlertDialog$Builder setCancelable(boolean z) {
        this.P.mCancelable = z;
        return this;
    }

    public AlertDialog$Builder setOnCancelListener(DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        this.P.mOnCancelListener = dialogInterface$OnCancelListener;
        return this;
    }

    public AlertDialog$Builder setOnDismissListener(DialogInterface$OnDismissListener dialogInterface$OnDismissListener) {
        this.P.mOnDismissListener = dialogInterface$OnDismissListener;
        return this;
    }

    public AlertDialog$Builder setOnKeyListener(DialogInterface$OnKeyListener dialogInterface$OnKeyListener) {
        this.P.mOnKeyListener = dialogInterface$OnKeyListener;
        return this;
    }

    public AlertDialog$Builder setItems(@ArrayRes int i, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.P.mItems = this.P.mContext.getResources().getTextArray(i);
        this.P.mOnClickListener = dialogInterface$OnClickListener;
        return this;
    }

    public AlertDialog$Builder setItems(CharSequence[] charSequenceArr, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.P.mItems = charSequenceArr;
        this.P.mOnClickListener = dialogInterface$OnClickListener;
        return this;
    }

    public AlertDialog$Builder setAdapter(ListAdapter listAdapter, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.P.mAdapter = listAdapter;
        this.P.mOnClickListener = dialogInterface$OnClickListener;
        return this;
    }

    public AlertDialog$Builder setCursor(Cursor cursor, DialogInterface$OnClickListener dialogInterface$OnClickListener, String str) {
        this.P.mCursor = cursor;
        this.P.mLabelColumn = str;
        this.P.mOnClickListener = dialogInterface$OnClickListener;
        return this;
    }

    public AlertDialog$Builder setMultiChoiceItems(@ArrayRes int i, boolean[] zArr, DialogInterface$OnMultiChoiceClickListener dialogInterface$OnMultiChoiceClickListener) {
        this.P.mItems = this.P.mContext.getResources().getTextArray(i);
        this.P.mOnCheckboxClickListener = dialogInterface$OnMultiChoiceClickListener;
        this.P.mCheckedItems = zArr;
        this.P.mIsMultiChoice = true;
        return this;
    }

    public AlertDialog$Builder setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface$OnMultiChoiceClickListener dialogInterface$OnMultiChoiceClickListener) {
        this.P.mItems = charSequenceArr;
        this.P.mOnCheckboxClickListener = dialogInterface$OnMultiChoiceClickListener;
        this.P.mCheckedItems = zArr;
        this.P.mIsMultiChoice = true;
        return this;
    }

    public AlertDialog$Builder setMultiChoiceItems(Cursor cursor, String str, String str2, DialogInterface$OnMultiChoiceClickListener dialogInterface$OnMultiChoiceClickListener) {
        this.P.mCursor = cursor;
        this.P.mOnCheckboxClickListener = dialogInterface$OnMultiChoiceClickListener;
        this.P.mIsCheckedColumn = str;
        this.P.mLabelColumn = str2;
        this.P.mIsMultiChoice = true;
        return this;
    }

    public AlertDialog$Builder setSingleChoiceItems(@ArrayRes int i, int i2, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.P.mItems = this.P.mContext.getResources().getTextArray(i);
        this.P.mOnClickListener = dialogInterface$OnClickListener;
        this.P.mCheckedItem = i2;
        this.P.mIsSingleChoice = true;
        return this;
    }

    public AlertDialog$Builder setSingleChoiceItems(Cursor cursor, int i, String str, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.P.mCursor = cursor;
        this.P.mOnClickListener = dialogInterface$OnClickListener;
        this.P.mCheckedItem = i;
        this.P.mLabelColumn = str;
        this.P.mIsSingleChoice = true;
        return this;
    }

    public AlertDialog$Builder setSingleChoiceItems(CharSequence[] charSequenceArr, int i, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.P.mItems = charSequenceArr;
        this.P.mOnClickListener = dialogInterface$OnClickListener;
        this.P.mCheckedItem = i;
        this.P.mIsSingleChoice = true;
        return this;
    }

    public AlertDialog$Builder setSingleChoiceItems(ListAdapter listAdapter, int i, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.P.mAdapter = listAdapter;
        this.P.mOnClickListener = dialogInterface$OnClickListener;
        this.P.mCheckedItem = i;
        this.P.mIsSingleChoice = true;
        return this;
    }

    public AlertDialog$Builder setOnItemSelectedListener(AdapterView$OnItemSelectedListener adapterView$OnItemSelectedListener) {
        this.P.mOnItemSelectedListener = adapterView$OnItemSelectedListener;
        return this;
    }

    public AlertDialog$Builder setView(int i) {
        this.P.mView = null;
        this.P.mViewLayoutResId = i;
        this.P.mViewSpacingSpecified = false;
        return this;
    }

    public AlertDialog$Builder setView(View view) {
        this.P.mView = view;
        this.P.mViewLayoutResId = 0;
        this.P.mViewSpacingSpecified = false;
        return this;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    @Deprecated
    public AlertDialog$Builder setView(View view, int i, int i2, int i3, int i4) {
        this.P.mView = view;
        this.P.mViewLayoutResId = 0;
        this.P.mViewSpacingSpecified = true;
        this.P.mViewSpacingLeft = i;
        this.P.mViewSpacingTop = i2;
        this.P.mViewSpacingRight = i3;
        this.P.mViewSpacingBottom = i4;
        return this;
    }

    @Deprecated
    public AlertDialog$Builder setInverseBackgroundForced(boolean z) {
        this.P.mForceInverseBackground = z;
        return this;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public AlertDialog$Builder setRecycleOnMeasureEnabled(boolean z) {
        this.P.mRecycleOnMeasure = z;
        return this;
    }

    public AlertDialog create() {
        AlertDialog alertDialog = new AlertDialog(this.P.mContext, this.mTheme);
        this.P.apply(alertDialog.mAlert);
        alertDialog.setCancelable(this.P.mCancelable);
        if (this.P.mCancelable) {
            alertDialog.setCanceledOnTouchOutside(true);
        }
        alertDialog.setOnCancelListener(this.P.mOnCancelListener);
        alertDialog.setOnDismissListener(this.P.mOnDismissListener);
        if (this.P.mOnKeyListener != null) {
            alertDialog.setOnKeyListener(this.P.mOnKeyListener);
        }
        return alertDialog;
    }

    public AlertDialog show() {
        AlertDialog alertDialogCreate = create();
        alertDialogCreate.show();
        return alertDialogCreate;
    }
}
