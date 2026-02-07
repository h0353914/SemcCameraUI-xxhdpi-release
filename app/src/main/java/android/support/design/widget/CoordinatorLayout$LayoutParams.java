package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.coordinatorlayout.R$styleable;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes.dex */
public class CoordinatorLayout$LayoutParams extends ViewGroup$MarginLayoutParams {
    public int anchorGravity;
    public int dodgeInsetEdges;
    public int gravity;
    public int insetEdge;
    public int keyline;
    View mAnchorDirectChild;
    int mAnchorId;
    View mAnchorView;
    CoordinatorLayout$Behavior mBehavior;
    boolean mBehaviorResolved;
    Object mBehaviorTag;
    private boolean mDidAcceptNestedScrollNonTouch;
    private boolean mDidAcceptNestedScrollTouch;
    private boolean mDidBlockInteraction;
    private boolean mDidChangeAfterNestedScroll;
    int mInsetOffsetX;
    int mInsetOffsetY;
    final Rect mLastChildRect;

    public CoordinatorLayout$LayoutParams(int i, int i2) {
        super(i, i2);
        this.mBehaviorResolved = false;
        this.gravity = 0;
        this.anchorGravity = 0;
        this.keyline = -1;
        this.mAnchorId = -1;
        this.insetEdge = 0;
        this.dodgeInsetEdges = 0;
        this.mLastChildRect = new Rect();
    }

    CoordinatorLayout$LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBehaviorResolved = false;
        this.gravity = 0;
        this.anchorGravity = 0;
        this.keyline = -1;
        this.mAnchorId = -1;
        this.insetEdge = 0;
        this.dodgeInsetEdges = 0;
        this.mLastChildRect = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout_Layout);
        this.gravity = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
        this.mAnchorId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CoordinatorLayout_Layout_layout_anchor, -1);
        this.anchorGravity = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
        this.keyline = typedArrayObtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_layout_keyline, -1);
        this.insetEdge = typedArrayObtainStyledAttributes.getInt(R$styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
        this.dodgeInsetEdges = typedArrayObtainStyledAttributes.getInt(R$styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
        this.mBehaviorResolved = typedArrayObtainStyledAttributes.hasValue(R$styleable.CoordinatorLayout_Layout_layout_behavior);
        if (this.mBehaviorResolved) {
            this.mBehavior = CoordinatorLayout.parseBehavior(context, attributeSet, typedArrayObtainStyledAttributes.getString(R$styleable.CoordinatorLayout_Layout_layout_behavior));
        }
        typedArrayObtainStyledAttributes.recycle();
        if (this.mBehavior != null) {
            this.mBehavior.onAttachedToLayoutParams(this);
        }
    }

    public CoordinatorLayout$LayoutParams(CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams) {
        super((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams);
        this.mBehaviorResolved = false;
        this.gravity = 0;
        this.anchorGravity = 0;
        this.keyline = -1;
        this.mAnchorId = -1;
        this.insetEdge = 0;
        this.dodgeInsetEdges = 0;
        this.mLastChildRect = new Rect();
    }

    public CoordinatorLayout$LayoutParams(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        super(viewGroup$MarginLayoutParams);
        this.mBehaviorResolved = false;
        this.gravity = 0;
        this.anchorGravity = 0;
        this.keyline = -1;
        this.mAnchorId = -1;
        this.insetEdge = 0;
        this.dodgeInsetEdges = 0;
        this.mLastChildRect = new Rect();
    }

    public CoordinatorLayout$LayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.mBehaviorResolved = false;
        this.gravity = 0;
        this.anchorGravity = 0;
        this.keyline = -1;
        this.mAnchorId = -1;
        this.insetEdge = 0;
        this.dodgeInsetEdges = 0;
        this.mLastChildRect = new Rect();
    }

    @IdRes
    public int getAnchorId() {
        return this.mAnchorId;
    }

    public void setAnchorId(@IdRes int i) {
        invalidateAnchor();
        this.mAnchorId = i;
    }

    @Nullable
    public CoordinatorLayout$Behavior getBehavior() {
        return this.mBehavior;
    }

    public void setBehavior(@Nullable CoordinatorLayout$Behavior coordinatorLayout$Behavior) {
        if (this.mBehavior != coordinatorLayout$Behavior) {
            if (this.mBehavior != null) {
                this.mBehavior.onDetachedFromLayoutParams();
            }
            this.mBehavior = coordinatorLayout$Behavior;
            this.mBehaviorTag = null;
            this.mBehaviorResolved = true;
            if (coordinatorLayout$Behavior != null) {
                coordinatorLayout$Behavior.onAttachedToLayoutParams(this);
            }
        }
    }

    void setLastChildRect(Rect rect) {
        this.mLastChildRect.set(rect);
    }

    Rect getLastChildRect() {
        return this.mLastChildRect;
    }

    boolean checkAnchorChanged() {
        return this.mAnchorView == null && this.mAnchorId != -1;
    }

    boolean didBlockInteraction() {
        if (this.mBehavior == null) {
            this.mDidBlockInteraction = false;
        }
        return this.mDidBlockInteraction;
    }

    boolean isBlockingInteractionBelow(CoordinatorLayout coordinatorLayout, View view) {
        if (this.mDidBlockInteraction) {
            return true;
        }
        boolean zBlocksInteractionBelow = (this.mBehavior != null ? this.mBehavior.blocksInteractionBelow(coordinatorLayout, view) : false) | this.mDidBlockInteraction;
        this.mDidBlockInteraction = zBlocksInteractionBelow;
        return zBlocksInteractionBelow;
    }

    void resetTouchBehaviorTracking() {
        this.mDidBlockInteraction = false;
    }

    void resetNestedScroll(int i) {
        setNestedScrollAccepted(i, false);
    }

    void setNestedScrollAccepted(int i, boolean z) {
        switch (i) {
            case 0:
                this.mDidAcceptNestedScrollTouch = z;
                break;
            case 1:
                this.mDidAcceptNestedScrollNonTouch = z;
                break;
        }
    }

    boolean isNestedScrollAccepted(int i) {
        switch (i) {
            case 0:
                return this.mDidAcceptNestedScrollTouch;
            case 1:
                return this.mDidAcceptNestedScrollNonTouch;
            default:
                return false;
        }
    }

    boolean getChangedAfterNestedScroll() {
        return this.mDidChangeAfterNestedScroll;
    }

    void setChangedAfterNestedScroll(boolean z) {
        this.mDidChangeAfterNestedScroll = z;
    }

    void resetChangedAfterNestedScroll() {
        this.mDidChangeAfterNestedScroll = false;
    }

    boolean dependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 == this.mAnchorDirectChild || shouldDodge(view2, ViewCompat.getLayoutDirection(coordinatorLayout)) || (this.mBehavior != null && this.mBehavior.layoutDependsOn(coordinatorLayout, view, view2));
    }

    void invalidateAnchor() {
        this.mAnchorDirectChild = null;
        this.mAnchorView = null;
    }

    View findAnchorView(CoordinatorLayout coordinatorLayout, View view) {
        if (this.mAnchorId == -1) {
            this.mAnchorDirectChild = null;
            this.mAnchorView = null;
            return null;
        }
        if (this.mAnchorView == null || !verifyAnchorView(view, coordinatorLayout)) {
            resolveAnchorView(view, coordinatorLayout);
        }
        return this.mAnchorView;
    }

    private void resolveAnchorView(View view, CoordinatorLayout coordinatorLayout) {
        this.mAnchorView = coordinatorLayout.findViewById(this.mAnchorId);
        if (this.mAnchorView != null) {
            if (this.mAnchorView == coordinatorLayout) {
                if (coordinatorLayout.isInEditMode()) {
                    this.mAnchorDirectChild = null;
                    this.mAnchorView = null;
                    return;
                }
                throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
            }
            View view2 = this.mAnchorView;
            for (ViewParent parent = this.mAnchorView.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                if (parent == view) {
                    if (coordinatorLayout.isInEditMode()) {
                        this.mAnchorDirectChild = null;
                        this.mAnchorView = null;
                        return;
                    }
                    throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                }
                if (parent instanceof View) {
                    view2 = (View) parent;
                }
            }
            this.mAnchorDirectChild = view2;
            return;
        }
        if (coordinatorLayout.isInEditMode()) {
            this.mAnchorDirectChild = null;
            this.mAnchorView = null;
            return;
        }
        throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.mAnchorId) + " to anchor view " + view);
    }

    private boolean verifyAnchorView(View view, CoordinatorLayout coordinatorLayout) {
        if (this.mAnchorView.getId() != this.mAnchorId) {
            return false;
        }
        View view2 = this.mAnchorView;
        for (ViewParent parent = this.mAnchorView.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
            if (parent == null || parent == view) {
                this.mAnchorDirectChild = null;
                this.mAnchorView = null;
                return false;
            }
            if (parent instanceof View) {
                view2 = (View) parent;
            }
        }
        this.mAnchorDirectChild = view2;
        return true;
    }

    private boolean shouldDodge(View view, int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(((CoordinatorLayout$LayoutParams) view.getLayoutParams()).insetEdge, i);
        return absoluteGravity != 0 && (GravityCompat.getAbsoluteGravity(this.dodgeInsetEdges, i) & absoluteGravity) == absoluteGravity;
    }
}
