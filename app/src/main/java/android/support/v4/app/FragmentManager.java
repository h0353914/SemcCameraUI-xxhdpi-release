package android.support.v4.app;

import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

public abstract class FragmentManager {
    public static final int POP_BACK_STACK_INCLUSIVE = 1;

    public abstract void addOnBackStackChangedListener(@NonNull FragmentManager$OnBackStackChangedListener fragmentManager$OnBackStackChangedListener);

    @NonNull
    public abstract FragmentTransaction beginTransaction();

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract boolean executePendingTransactions();

    @Nullable
    public abstract Fragment findFragmentById(@IdRes int i);

    @Nullable
    public abstract Fragment findFragmentByTag(@Nullable String str);

    @NonNull
    public abstract FragmentManager$BackStackEntry getBackStackEntryAt(int i);

    public abstract int getBackStackEntryCount();

    @Nullable
    public abstract Fragment getFragment(@NonNull Bundle bundle, @NonNull String str);

    @NonNull
    public abstract List<Fragment> getFragments();

    @Nullable
    public abstract Fragment getPrimaryNavigationFragment();

    public abstract boolean isDestroyed();

    public abstract boolean isStateSaved();

    public abstract void popBackStack();

    public abstract void popBackStack(int i, int i2);

    public abstract void popBackStack(@Nullable String str, int i);

    public abstract boolean popBackStackImmediate();

    public abstract boolean popBackStackImmediate(int i, int i2);

    public abstract boolean popBackStackImmediate(@Nullable String str, int i);

    public abstract void putFragment(@NonNull Bundle bundle, @NonNull String str, @NonNull Fragment fragment);

    public abstract void registerFragmentLifecycleCallbacks(@NonNull FragmentManager$FragmentLifecycleCallbacks fragmentManager$FragmentLifecycleCallbacks, boolean z);

    public abstract void removeOnBackStackChangedListener(@NonNull FragmentManager$OnBackStackChangedListener fragmentManager$OnBackStackChangedListener);

    @Nullable
    public abstract Fragment$SavedState saveFragmentInstanceState(Fragment fragment);

    public abstract void unregisterFragmentLifecycleCallbacks(@NonNull FragmentManager$FragmentLifecycleCallbacks fragmentManager$FragmentLifecycleCallbacks);

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    @Deprecated
    public FragmentTransaction openTransaction() {
        return beginTransaction();
    }

    public static void enableDebugLogging(boolean z) {
        FragmentManagerImpl.DEBUG = z;
    }
}
