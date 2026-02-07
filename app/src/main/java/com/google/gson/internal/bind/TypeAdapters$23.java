package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes.dex */
class TypeAdapters$23 extends TypeAdapter<Calendar> {
    private static final String DAY_OF_MONTH = "dayOfMonth";
    private static final String HOUR_OF_DAY = "hourOfDay";
    private static final String MINUTE = "minute";
    private static final String MONTH = "month";
    private static final String SECOND = "second";
    private static final String YEAR = "year";

    TypeAdapters$23() {
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ Calendar read(JsonReader jsonReader) throws IOException {
        return read2(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Calendar calendar) throws IOException {
        write2(jsonWriter, calendar);
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public Calendar read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        jsonReader.beginObject();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (jsonReader.peek() != JsonToken.END_OBJECT) {
            String strNextName = jsonReader.nextName();
            int iNextInt = jsonReader.nextInt();
            if ("year".equals(strNextName)) {
                i = iNextInt;
            } else if ("month".equals(strNextName)) {
                i2 = iNextInt;
            } else if ("dayOfMonth".equals(strNextName)) {
                i3 = iNextInt;
            } else if ("hourOfDay".equals(strNextName)) {
                i4 = iNextInt;
            } else if ("minute".equals(strNextName)) {
                i5 = iNextInt;
            } else if ("second".equals(strNextName)) {
                i6 = iNextInt;
            }
        }
        jsonReader.endObject();
        return new GregorianCalendar(i, i2, i3, i4, i5, i6);
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, Calendar calendar) throws IOException {
        if (calendar == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginObject();
        jsonWriter.name("year");
        jsonWriter.value(calendar.get(1));
        jsonWriter.name("month");
        jsonWriter.value(calendar.get(2));
        jsonWriter.name("dayOfMonth");
        jsonWriter.value(calendar.get(5));
        jsonWriter.name("hourOfDay");
        jsonWriter.value(calendar.get(11));
        jsonWriter.name("minute");
        jsonWriter.value(calendar.get(12));
        jsonWriter.name("second");
        jsonWriter.value(calendar.get(13));
        jsonWriter.endObject();
    }
}
