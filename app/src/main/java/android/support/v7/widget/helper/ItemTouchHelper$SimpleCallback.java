package android.support.v7.widget.helper;

import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView$ViewHolder;

public abstract class ItemTouchHelper$SimpleCallback extends ItemTouchHelper$Callback {
    private int mDefaultDragDirs;
    private int mDefaultSwipeDirs;

    public ItemTouchHelper$SimpleCallback(int i, int i2) {
        this.mDefaultSwipeDirs = i2;
        this.mDefaultDragDirs = i;
    }

    public void setDefaultSwipeDirs(int i) {
        this.mDefaultSwipeDirs = i;
    }

    public void setDefaultDragDirs(int i) {
        this.mDefaultDragDirs = i;
    }

    public int getSwipeDirs(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return this.mDefaultSwipeDirs;
    }

    public int getDragDirs(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return this.mDefaultDragDirs;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper$Callback
    public int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return makeMovementFlags(getDragDirs(recyclerView, recyclerView$ViewHolder), getSwipeDirs(recyclerView, recyclerView$ViewHolder));
    }
}
