package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.util.CamLog;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class UserSettingValueHolder<T extends UserSettingValue> {
    public static final String DELIMITER = "-";
    public static final String NO_VALUE = "NO_VALUE";
    public static final String REGULAR_EXPRESSION = "@";
    public static final String TAG = "UserSettingValueHolder";
    private boolean mChanged;
    private T mDefaultValue;
    private T[] mOptions;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<TT;>.ParameterState; */
    private UserSettingValueHolder$ParameterState mState;

    static /* synthetic */ boolean access$002(UserSettingValueHolder userSettingValueHolder, boolean z) {
        userSettingValueHolder.mChanged = z;
        return z;
    }

    static /* synthetic */ UserSettingValueHolder$ParameterState access$102(UserSettingValueHolder userSettingValueHolder, UserSettingValueHolder$ParameterState userSettingValueHolder$ParameterState) {
        userSettingValueHolder.mState = userSettingValueHolder$ParameterState;
        return userSettingValueHolder$ParameterState;
    }

    public UserSettingValueHolder(T t) {
        if (t == null) {
            CamLog.d("Create UserSettingValueHolder with null default value ");
        }
        this.mDefaultValue = t;
        this.mState = new UserSettingValueHolder$NormalState(this, t, null, null);
        onApplied();
    }

    public void setOptions(T[] tArr) {
        this.mOptions = (T[]) ((UserSettingValue[]) tArr.clone());
    }

    public T[] getOptions() {
        return (T[]) ((UserSettingValue[]) this.mOptions.clone());
    }

    public void set(T t) {
        this.mState.setCurrentValue(t);
    }

    public T get() {
        return (T) this.mState.getCurrentValue();
    }

    public T getOriginalValue() {
        return (T) this.mState.getOriginalValue();
    }

    public T getRecommendedValue() {
        return (T) this.mState.getRecommendedValue();
    }

    public boolean forceChange(T t) {
        return this.mState.forceChange(t);
    }

    public boolean reset() {
        return this.mState.reset();
    }

    public void applyRecommendedValue(T t) {
        this.mState.applyRecommendedValue(t);
    }

    public void applyCurrentValue() {
        this.mState.applyCurrentValue();
    }

    public T setDefaultValue() {
        this.mState.setCurrentValue(this.mDefaultValue);
        return this.mDefaultValue;
    }

    public T updateDefaultValue(T t) {
        this.mDefaultValue = t;
        if (!this.mChanged) {
            setDefaultValue();
            onApplied();
        }
        return this.mDefaultValue;
    }

    public T getDefaultValue() {
        return this.mDefaultValue;
    }

    public boolean hasChanged() {
        return this.mChanged;
    }

    public void onApplied() {
        this.mChanged = false;
    }

    public void canChanged() {
        this.mChanged = true;
    }

    public String createValueString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.mState.getClass().getName());
        stringBuffer.append("-");
        stringBuffer.append(serialize(this.mState.getCurrentValue()));
        stringBuffer.append("-");
        stringBuffer.append(serialize(this.mState.getOriginalValue()));
        stringBuffer.append("-");
        stringBuffer.append(serialize(this.mState.getRecommendedValue()));
        if (this.mState.getCurrentValue() instanceof UserSettingIntValue) {
            stringBuffer.append("-");
            stringBuffer.append(String.valueOf(((UserSettingIntValue) this.mState.getCurrentValue()).getInt()));
        }
        return stringBuffer.toString();
    }

    public void parseValueString(String str) {
        UserSettingValueHolder$ParameterState parameterState;
        UserSettingValue userSettingValueDeserialize;
        if (str == null || this.mChanged) {
            return;
        }
        String[] strArrSplit = str.split("-");
        if (strArrSplit.length < 4 || (parameterState = getParameterState(strArrSplit[0])) == null || (userSettingValueDeserialize = deserialize(strArrSplit[1])) == null) {
            return;
        }
        UserSettingValue userSettingValueDeserialize2 = deserialize(strArrSplit[2]);
        UserSettingValue userSettingValueDeserialize3 = deserialize(strArrSplit[3]);
        if (userSettingValueDeserialize instanceof UserSettingIntValue) {
            ((UserSettingIntValue) userSettingValueDeserialize).setInt(Integer.parseInt(strArrSplit[4]));
        }
        parameterState.setCurrentValue(userSettingValueDeserialize);
        parameterState.setOriginalValue(userSettingValueDeserialize2);
        parameterState.setRecommendedValue(userSettingValueDeserialize3);
        this.mState = parameterState;
    }

    private String serialize(T t) {
        if (t == null) {
            return "NO_VALUE";
        }
        return t.getClass().getName() + "@" + t.toString();
    }

    private T deserialize(String str) {
        if (str.equals("NO_VALUE")) {
            return null;
        }
        String[] strArrSplit = str.split("@");
        if (strArrSplit.length < 2) {
            return null;
        }
        try {
            return (T) Enum.valueOf(Class.forName(strArrSplit[0]), strArrSplit[1]);
        } catch (ClassCastException e) {
            if (CamLog.VERBOSE) {
                CamLog.w("deserialize failed.", e);
            }
            return null;
        } catch (ClassNotFoundException e2) {
            if (CamLog.VERBOSE) {
                CamLog.w("deserialize failed.", e2);
            }
            return null;
        } catch (IllegalArgumentException e3) {
            if (CamLog.VERBOSE) {
                CamLog.w("deserialize failed.", e3);
            }
            return null;
        } catch (LinkageError e4) {
            if (CamLog.VERBOSE) {
                CamLog.w("deserialize failed.", e4);
            }
            return null;
        }
    }

    /* JADX WARN: Incorrect inner types in method signature: (Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<TT;>.ParameterState; */
    private UserSettingValueHolder$ParameterState getParameterState(String str) {
        try {
            return (UserSettingValueHolder$ParameterState) Class.forName(str).getConstructor(getClass()).newInstance(this);
        } catch (ClassCastException e) {
            if (CamLog.VERBOSE) {
                CamLog.d("getParameterState failed", e);
            }
            return null;
        } catch (ClassNotFoundException e2) {
            if (CamLog.VERBOSE) {
                CamLog.d("getParameterState failed", e2);
            }
            return null;
        } catch (IllegalAccessException e3) {
            if (CamLog.VERBOSE) {
                CamLog.d("getParameterState failed", e3);
            }
            return null;
        } catch (IllegalArgumentException e4) {
            if (CamLog.VERBOSE) {
                CamLog.d("getParameterState failed", e4);
            }
            return null;
        } catch (InstantiationException e5) {
            if (CamLog.VERBOSE) {
                CamLog.d("getParameterState failed", e5);
            }
            return null;
        } catch (LinkageError e6) {
            if (CamLog.VERBOSE) {
                CamLog.d("getParameterState failed", e6);
            }
            return null;
        } catch (NoSuchMethodException e7) {
            if (CamLog.VERBOSE) {
                CamLog.d("getParameterState failed", e7);
            }
            return null;
        } catch (SecurityException e8) {
            if (CamLog.VERBOSE) {
                CamLog.d("getParameterState failed", e8);
            }
            return null;
        } catch (InvocationTargetException e9) {
            if (CamLog.VERBOSE) {
                CamLog.d("getParameterState failed", e9);
            }
            return null;
        }
    }

    public String toString() {
        return this.mState == null ? super.toString() : String.format("%s(%s|%s|%s)", this.mState.getClass().getSimpleName(), Objects.toString(this.mState.getCurrentValue(), "NO_VALUE"), Objects.toString(this.mState.getOriginalValue(), "NO_VALUE"), Objects.toString(this.mState.getRecommendedValue(), "NO_VALUE"));
    }
}
