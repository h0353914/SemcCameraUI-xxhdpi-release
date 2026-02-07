package android.support.v7.view.menu;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class ListMenuPresenter$MenuAdapter extends BaseAdapter {
    private int mExpandedIndex = -1;
    final /* synthetic */ ListMenuPresenter this$0;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public /* bridge */ /* synthetic */ Object getItem(int i) {
        return getItem(i);
    }

    public ListMenuPresenter$MenuAdapter(ListMenuPresenter listMenuPresenter) {
        this.this$0 = listMenuPresenter;
        findExpandedIndex();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int size = this.this$0.mMenu.getNonActionItems().size() - this.this$0.mItemIndexOffset;
        return this.mExpandedIndex < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public MenuItemImpl getItem(int i) {
        ArrayList<MenuItemImpl> nonActionItems = this.this$0.mMenu.getNonActionItems();
        int i2 = i + this.this$0.mItemIndexOffset;
        if (this.mExpandedIndex >= 0 && i2 >= this.mExpandedIndex) {
            i2++;
        }
        return nonActionItems.get(i2);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.this$0.mInflater.inflate(this.this$0.mItemLayoutRes, viewGroup, false);
        }
        ((MenuView$ItemView) view).initialize(getItem(i), 0);
        return view;
    }

    void findExpandedIndex() {
        MenuItemImpl expandedItem = this.this$0.mMenu.getExpandedItem();
        if (expandedItem != null) {
            ArrayList<MenuItemImpl> nonActionItems = this.this$0.mMenu.getNonActionItems();
            int size = nonActionItems.size();
            for (int i = 0; i < size; i++) {
                if (nonActionItems.get(i) == expandedItem) {
                    this.mExpandedIndex = i;
                    return;
                }
            }
        }
        this.mExpandedIndex = -1;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        findExpandedIndex();
        super.notifyDataSetChanged();
    }
}
