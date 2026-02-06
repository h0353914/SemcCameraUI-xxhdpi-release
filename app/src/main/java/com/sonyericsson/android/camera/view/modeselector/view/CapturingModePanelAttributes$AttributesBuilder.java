package com.sonyericsson.android.camera.view.modeselector.view;

public class CapturingModePanelAttributes$AttributesBuilder {
    CapturingModePanelAttributes mAttributes = new CapturingModePanelAttributes((CapturingModePanelAttributes$1) null);

    public CapturingModePanelAttributes$AttributesBuilder setPackageName(String str) {
        CapturingModePanelAttributes.access$102(this.mAttributes, str);
        return this;
    }

    public CapturingModePanelAttributes$AttributesBuilder setActivityName(String str) {
        CapturingModePanelAttributes.access$202(this.mAttributes, str);
        return this;
    }

    public CapturingModePanelAttributes$AttributesBuilder setModeName(String str) {
        CapturingModePanelAttributes.access$302(this.mAttributes, str);
        return this;
    }

    public CapturingModePanelAttributes$AttributesBuilder setIconUri(String str) {
        CapturingModePanelAttributes.access$402(this.mAttributes, str);
        return this;
    }

    public CapturingModePanelAttributes$AttributesBuilder setTitle(String str) {
        CapturingModePanelAttributes.access$502(this.mAttributes, str);
        return this;
    }

    public CapturingModePanelAttributes$AttributesBuilder setDescription(String str) {
        CapturingModePanelAttributes.access$602(this.mAttributes, str);
        return this;
    }

    public CapturingModePanelAttributes build() {
        return new CapturingModePanelAttributes(this.mAttributes, null);
    }
}
