package android.support.v4.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost$OnTabChangeListener;
import android.widget.TabHost$TabSpec;
import android.widget.TabWidget;
import java.util.ArrayList;

public class FragmentTabHost extends TabHost implements TabHost$OnTabChangeListener {
    private boolean mAttached;
    private int mContainerId;
    private Context mContext;
    private FragmentManager mFragmentManager;
    private FragmentTabHost$TabInfo mLastTab;
    private TabHost$OnTabChangeListener mOnTabChangeListener;
    private FrameLayout mRealTabContent;
    private final ArrayList<FragmentTabHost$TabInfo> mTabs;

    public FragmentTabHost(Context context) {
        super(context, null);
        this.mTabs = new ArrayList<>();
        initFragmentTabHost(context, null);
    }

    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTabs = new ArrayList<>();
        initFragmentTabHost(context, attributeSet);
    }

    private void initFragmentTabHost(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.mContainerId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    private void ensureHierarchy(Context context) {
        if (findViewById(16908307) == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new FrameLayout$LayoutParams(-1, -1));
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(16908307);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout$LayoutParams(-1, -2, 0.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(16908305);
            linearLayout.addView(frameLayout, new LinearLayout$LayoutParams(0, 0, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.mRealTabContent = frameLayout2;
            this.mRealTabContent.setId(this.mContainerId);
            linearLayout.addView(frameLayout2, new LinearLayout$LayoutParams(-1, 0, 1.0f));
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    public void setup(Context context, FragmentManager fragmentManager) {
        ensureHierarchy(context);
        super.setup();
        this.mContext = context;
        this.mFragmentManager = fragmentManager;
        ensureContent();
    }

    public void setup(Context context, FragmentManager fragmentManager, int i) {
        ensureHierarchy(context);
        super.setup();
        this.mContext = context;
        this.mFragmentManager = fragmentManager;
        this.mContainerId = i;
        ensureContent();
        this.mRealTabContent.setId(i);
        if (getId() == -1) {
            setId(16908306);
        }
    }

    private void ensureContent() {
        if (this.mRealTabContent == null) {
            this.mRealTabContent = (FrameLayout) findViewById(this.mContainerId);
            if (this.mRealTabContent == null) {
                throw new IllegalStateException("No tab content FrameLayout found for id " + this.mContainerId);
            }
        }
    }

    @Override // android.widget.TabHost
    public void setOnTabChangedListener(TabHost$OnTabChangeListener tabHost$OnTabChangeListener) {
        this.mOnTabChangeListener = tabHost$OnTabChangeListener;
    }

    public void addTab(@NonNull TabHost$TabSpec tabHost$TabSpec, @NonNull Class<?> cls, @Nullable Bundle bundle) {
        tabHost$TabSpec.setContent(new FragmentTabHost$DummyTabFactory(this.mContext));
        String tag = tabHost$TabSpec.getTag();
        FragmentTabHost$TabInfo fragmentTabHost$TabInfo = new FragmentTabHost$TabInfo(tag, cls, bundle);
        if (this.mAttached) {
            fragmentTabHost$TabInfo.fragment = this.mFragmentManager.findFragmentByTag(tag);
            if (fragmentTabHost$TabInfo.fragment != null && !fragmentTabHost$TabInfo.fragment.isDetached()) {
                FragmentTransaction fragmentTransactionBeginTransaction = this.mFragmentManager.beginTransaction();
                fragmentTransactionBeginTransaction.detach(fragmentTabHost$TabInfo.fragment);
                fragmentTransactionBeginTransaction.commit();
            }
        }
        this.mTabs.add(fragmentTabHost$TabInfo);
        addTab(tabHost$TabSpec);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.mTabs.size();
        FragmentTransaction fragmentTransactionBeginTransaction = null;
        for (int i = 0; i < size; i++) {
            FragmentTabHost$TabInfo fragmentTabHost$TabInfo = this.mTabs.get(i);
            fragmentTabHost$TabInfo.fragment = this.mFragmentManager.findFragmentByTag(fragmentTabHost$TabInfo.tag);
            if (fragmentTabHost$TabInfo.fragment != null && !fragmentTabHost$TabInfo.fragment.isDetached()) {
                if (fragmentTabHost$TabInfo.tag.equals(currentTabTag)) {
                    this.mLastTab = fragmentTabHost$TabInfo;
                } else {
                    if (fragmentTransactionBeginTransaction == null) {
                        fragmentTransactionBeginTransaction = this.mFragmentManager.beginTransaction();
                    }
                    fragmentTransactionBeginTransaction.detach(fragmentTabHost$TabInfo.fragment);
                }
            }
        }
        this.mAttached = true;
        FragmentTransaction fragmentTransactionDoTabChanged = doTabChanged(currentTabTag, fragmentTransactionBeginTransaction);
        if (fragmentTransactionDoTabChanged != null) {
            fragmentTransactionDoTabChanged.commit();
            this.mFragmentManager.executePendingTransactions();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mAttached = false;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        FragmentTabHost$SavedState fragmentTabHost$SavedState = new FragmentTabHost$SavedState(super.onSaveInstanceState());
        fragmentTabHost$SavedState.curTab = getCurrentTabTag();
        return fragmentTabHost$SavedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof FragmentTabHost$SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        FragmentTabHost$SavedState fragmentTabHost$SavedState = (FragmentTabHost$SavedState) parcelable;
        super.onRestoreInstanceState(fragmentTabHost$SavedState.getSuperState());
        setCurrentTabByTag(fragmentTabHost$SavedState.curTab);
    }

    @Override // android.widget.TabHost$OnTabChangeListener
    public void onTabChanged(String str) {
        FragmentTransaction fragmentTransactionDoTabChanged;
        if (this.mAttached && (fragmentTransactionDoTabChanged = doTabChanged(str, null)) != null) {
            fragmentTransactionDoTabChanged.commit();
        }
        if (this.mOnTabChangeListener != null) {
            this.mOnTabChangeListener.onTabChanged(str);
        }
    }

    @Nullable
    private FragmentTransaction doTabChanged(@Nullable String str, @Nullable FragmentTransaction fragmentTransaction) {
        FragmentTabHost$TabInfo tabInfoForTag = getTabInfoForTag(str);
        if (this.mLastTab != tabInfoForTag) {
            if (fragmentTransaction == null) {
                fragmentTransaction = this.mFragmentManager.beginTransaction();
            }
            if (this.mLastTab != null && this.mLastTab.fragment != null) {
                fragmentTransaction.detach(this.mLastTab.fragment);
            }
            if (tabInfoForTag != null) {
                if (tabInfoForTag.fragment == null) {
                    tabInfoForTag.fragment = Fragment.instantiate(this.mContext, tabInfoForTag.clss.getName(), tabInfoForTag.args);
                    fragmentTransaction.add(this.mContainerId, tabInfoForTag.fragment, tabInfoForTag.tag);
                } else {
                    fragmentTransaction.attach(tabInfoForTag.fragment);
                }
            }
            this.mLastTab = tabInfoForTag;
        }
        return fragmentTransaction;
    }

    @Nullable
    private FragmentTabHost$TabInfo getTabInfoForTag(String str) {
        int size = this.mTabs.size();
        for (int i = 0; i < size; i++) {
            FragmentTabHost$TabInfo fragmentTabHost$TabInfo = this.mTabs.get(i);
            if (fragmentTabHost$TabInfo.tag.equals(str)) {
                return fragmentTabHost$TabInfo;
            }
        }
        return null;
    }
}
