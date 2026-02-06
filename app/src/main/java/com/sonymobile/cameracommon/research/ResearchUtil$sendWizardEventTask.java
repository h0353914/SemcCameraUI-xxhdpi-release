package com.sonymobile.cameracommon.research;

import com.sonymobile.cameracommon.research.idd.IddUtil;
import com.sonymobile.cameracommon.research.parameters.Event$WizardPage;
import com.sonymobile.cameracommon.research.parameters.Event$WizardResult;

class ResearchUtil$sendWizardEventTask implements Runnable {
    private final String mPage;
    private final String mResult;
    private final long mTime;

    /* synthetic */ ResearchUtil$sendWizardEventTask(Event$WizardPage event$WizardPage, Event$WizardResult event$WizardResult, long j, ResearchUtil$1 researchUtil$1) {
        this(event$WizardPage, event$WizardResult, j);
    }

    private ResearchUtil$sendWizardEventTask(Event$WizardPage event$WizardPage, Event$WizardResult event$WizardResult, long j) {
        this.mPage = event$WizardPage.toString();
        this.mResult = event$WizardResult.toString();
        this.mTime = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        IddUtil.sendWizardEvent(this.mPage, String.valueOf(this.mTime), this.mResult);
    }
}
