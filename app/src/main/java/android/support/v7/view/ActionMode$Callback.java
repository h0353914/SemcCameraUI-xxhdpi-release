package android.support.v7.view;

import android.view.Menu;
import android.view.MenuItem;

public interface ActionMode$Callback {
    boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem);

    boolean onCreateActionMode(ActionMode actionMode, Menu menu);

    void onDestroyActionMode(ActionMode actionMode);

    boolean onPrepareActionMode(ActionMode actionMode, Menu menu);
}
