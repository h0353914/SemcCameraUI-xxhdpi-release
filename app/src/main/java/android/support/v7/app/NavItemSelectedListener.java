package android.support.v7.app;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemSelectedListener;

class NavItemSelectedListener implements AdapterView$OnItemSelectedListener {
    private final ActionBar$OnNavigationListener mListener;

    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public NavItemSelectedListener(ActionBar$OnNavigationListener actionBar$OnNavigationListener) {
        this.mListener = actionBar$OnNavigationListener;
    }

    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.mListener != null) {
            this.mListener.onNavigationItemSelected(i, j);
        }
    }
}
