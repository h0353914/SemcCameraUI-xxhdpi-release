package com.sonyericsson.android.camera.view.tutorial;

import android.content.Context;
import android.text.method.ScrollingMovementMethod;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class SimpleTutorialContentView extends TutorialContentView {
    protected TextView mTutorialDescription;
    protected ImageView mTutorialIcon;
    protected TextView mTutorialTitle;

    public SimpleTutorialContentView(Context context) {
        super(context);
    }

    public SimpleTutorialContentView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SimpleTutorialContentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView
    protected void onLayoutToLandscape() {
        this.mTutorialTitle = (TextView) findViewById(2131296333);
        this.mTutorialDescription = (TextView) findViewById(2131296328);
        this.mTutorialIcon = (ImageView) findViewById(2131296330);
        super.onLayoutToLandscape();
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView
    protected void onLayoutToPortrait() {
        this.mTutorialTitle = (TextView) findViewById(2131296334);
        this.mTutorialDescription = (TextView) findViewById(2131296329);
        this.mTutorialIcon = (ImageView) findViewById(2131296332);
        super.onLayoutToPortrait();
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView
    protected void onUpdateViewContent() {
        SimpleTutorialContentView$SimpleTutorialContent content = getContent();
        if (content == null) {
            return;
        }
        findViewById(2131296684).setOnClickListener(this);
        findViewById(2131296676).setOnClickListener(this);
        this.mTutorialTitle.setText(content.mTitleResourceId);
        this.mTutorialTitle.setContentDescription(getResources().getString(content.mTitleResourceId));
        this.mTutorialDescription.setText(content.mDescriptionResourceId);
        this.mTutorialDescription.setContentDescription(getResources().getString(content.mDescriptionResourceId));
        this.mTutorialDescription.setVerticalScrollBarEnabled(true);
        this.mTutorialDescription.setMovementMethod(ScrollingMovementMethod.getInstance());
        this.mTutorialIcon.setImageResource(content.mIconResourceId);
    }

    private SimpleTutorialContentView$SimpleTutorialContent getContent() {
        if (this.mContent == null || !SimpleTutorialContentView$SimpleTutorialContent.class.isAssignableFrom(this.mContent.getClass())) {
            return null;
        }
        return (SimpleTutorialContentView$SimpleTutorialContent) this.mContent;
    }
}
