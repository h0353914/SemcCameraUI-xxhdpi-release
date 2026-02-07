package com.sonyericsson.cameracommon.activity;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class RequestPermissionActivity$PermissionAdapter implements ListAdapter {
    private final Context mContext;
    private List<RequestPermissionActivity$PermissionGroup> mGroupList;
    private final int mId;
    final /* synthetic */ RequestPermissionActivity this$0;

    @Override // android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public int getItemViewType(int i) {
        return 0;
    }

    @Override // android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return false;
    }

    @Override // android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
    }

    @Override // android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
    }

    public RequestPermissionActivity$PermissionAdapter(RequestPermissionActivity requestPermissionActivity, Context context, int i, List<RequestPermissionActivity$PermissionGroup> list) {
        this.this$0 = requestPermissionActivity;
        this.mContext = context;
        this.mId = i;
        this.mGroupList = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mGroupList == null) {
            return 0;
        }
        return this.mGroupList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (this.mGroupList == null) {
            return null;
        }
        return this.mGroupList.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.mContext).inflate(2131492939, (ViewGroup) null);
        }
        RequestPermissionActivity$PermissionGroup requestPermissionActivity$PermissionGroup = (RequestPermissionActivity$PermissionGroup) getItem(i);
        TextView textView = (TextView) view.findViewById(2131296477);
        TextView textView2 = (TextView) view.findViewById(2131296384);
        if (this.mId == 513 && requestPermissionActivity$PermissionGroup != null && requestPermissionActivity$PermissionGroup.getPreDialogMessageId() != RequestPermissionActivity.access$000()) {
            textView.setText(RequestPermissionActivity.access$600(this.this$0, requestPermissionActivity$PermissionGroup));
            textView2.setText(this.this$0.getResources().getString(requestPermissionActivity$PermissionGroup.getPreDialogMessageId()));
        } else if (this.mId == 514 && requestPermissionActivity$PermissionGroup != null && requestPermissionActivity$PermissionGroup.getPostDialogMessageId() != RequestPermissionActivity.access$000()) {
            textView.setText(RequestPermissionActivity.access$600(this.this$0, requestPermissionActivity$PermissionGroup));
            textView2.setText(this.this$0.getResources().getString(requestPermissionActivity$PermissionGroup.getPostDialogMessageId()));
        }
        return view;
    }

    @Override // android.widget.Adapter
    public boolean isEmpty() {
        return getCount() < 1;
    }
}
