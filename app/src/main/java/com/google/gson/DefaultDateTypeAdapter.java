package com.google.gson;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
final class DefaultDateTypeAdapter implements JsonSerializer<Date>, JsonDeserializer<Date> {
    private final DateFormat enUsFormat;
    private final DateFormat iso8601Format;
    private final DateFormat localFormat;

    @Override // com.google.gson.JsonDeserializer
    public /* bridge */ /* synthetic */ Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        return deserialize2(jsonElement, type, jsonDeserializationContext);
    }

    @Override // com.google.gson.JsonSerializer
    public /* bridge */ /* synthetic */ JsonElement serialize(Date date, Type type, JsonSerializationContext jsonSerializationContext) {
        return serialize2(date, type, jsonSerializationContext);
    }

    DefaultDateTypeAdapter() {
        this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    DefaultDateTypeAdapter(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    DefaultDateTypeAdapter(int i) {
        this(DateFormat.getDateInstance(i, Locale.US), DateFormat.getDateInstance(i));
    }

    public DefaultDateTypeAdapter(int i, int i2) {
        this(DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    DefaultDateTypeAdapter(DateFormat dateFormat, DateFormat dateFormat2) {
        this.enUsFormat = dateFormat;
        this.localFormat = dateFormat2;
        this.iso8601Format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        this.iso8601Format.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    /* JADX INFO: renamed from: serialize, reason: avoid collision after fix types in other method */
    public JsonElement serialize2(Date date, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonPrimitive jsonPrimitive;
        synchronized (this.localFormat) {
            jsonPrimitive = new JsonPrimitive(this.enUsFormat.format(date));
        }
        return jsonPrimitive;
    }

    @Override // com.google.gson.JsonDeserializer
    /* JADX INFO: renamed from: deserialize, reason: avoid collision after fix types in other method */
    public Date deserialize2(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (!(jsonElement instanceof JsonPrimitive)) {
            throw new JsonParseException("The date should be a string value");
        }
        Date dateDeserializeToDate = deserializeToDate(jsonElement);
        if (type == Date.class) {
            return dateDeserializeToDate;
        }
        if (type == Timestamp.class) {
            return new Timestamp(dateDeserializeToDate.getTime());
        }
        if (type == java.sql.Date.class) {
            return new java.sql.Date(dateDeserializeToDate.getTime());
        }
        throw new IllegalArgumentException(getClass() + " cannot deserialize to " + type);
    }

    private Date deserializeToDate(JsonElement jsonElement) {
        Date date;
        synchronized (this.localFormat) {
            try {
                try {
                    try {
                        date = this.localFormat.parse(jsonElement.getAsString());
                    } catch (ParseException unused) {
                        return this.enUsFormat.parse(jsonElement.getAsString());
                    }
                } catch (ParseException e) {
                    throw new JsonSyntaxException(jsonElement.getAsString(), e);
                }
            } catch (ParseException unused2) {
                return this.iso8601Format.parse(jsonElement.getAsString());
            }
        }
        return date;
    }

    public String toString() {
        return DefaultDateTypeAdapter.class.getSimpleName() + '(' + this.localFormat.getClass().getSimpleName() + ')';
    }
}
