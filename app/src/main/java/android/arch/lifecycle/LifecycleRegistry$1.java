package android.arch.lifecycle;

/* synthetic */ class LifecycleRegistry$1 {
    static final /* synthetic */ int[] $SwitchMap$android$arch$lifecycle$Lifecycle$Event;
    static final /* synthetic */ int[] $SwitchMap$android$arch$lifecycle$Lifecycle$State = new int[Lifecycle$State.values().length];

    static {
        try {
            $SwitchMap$android$arch$lifecycle$Lifecycle$State[Lifecycle$State.INITIALIZED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$android$arch$lifecycle$Lifecycle$State[Lifecycle$State.CREATED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            $SwitchMap$android$arch$lifecycle$Lifecycle$State[Lifecycle$State.STARTED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            $SwitchMap$android$arch$lifecycle$Lifecycle$State[Lifecycle$State.RESUMED.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            $SwitchMap$android$arch$lifecycle$Lifecycle$State[Lifecycle$State.DESTROYED.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        $SwitchMap$android$arch$lifecycle$Lifecycle$Event = new int[Lifecycle$Event.values().length];
        try {
            $SwitchMap$android$arch$lifecycle$Lifecycle$Event[Lifecycle$Event.ON_CREATE.ordinal()] = 1;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            $SwitchMap$android$arch$lifecycle$Lifecycle$Event[Lifecycle$Event.ON_STOP.ordinal()] = 2;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            $SwitchMap$android$arch$lifecycle$Lifecycle$Event[Lifecycle$Event.ON_START.ordinal()] = 3;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            $SwitchMap$android$arch$lifecycle$Lifecycle$Event[Lifecycle$Event.ON_PAUSE.ordinal()] = 4;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            $SwitchMap$android$arch$lifecycle$Lifecycle$Event[Lifecycle$Event.ON_RESUME.ordinal()] = 5;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            $SwitchMap$android$arch$lifecycle$Lifecycle$Event[Lifecycle$Event.ON_DESTROY.ordinal()] = 6;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            $SwitchMap$android$arch$lifecycle$Lifecycle$Event[Lifecycle$Event.ON_ANY.ordinal()] = 7;
        } catch (NoSuchFieldError unused12) {
        }
    }
}
