package android.support.v7.app;

import android.support.v4.app.FragmentTransaction;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface ActionBar$TabListener {
    void onTabReselected(ActionBar$Tab actionBar$Tab, FragmentTransaction fragmentTransaction);

    void onTabSelected(ActionBar$Tab actionBar$Tab, FragmentTransaction fragmentTransaction);

    void onTabUnselected(ActionBar$Tab actionBar$Tab, FragmentTransaction fragmentTransaction);
}
