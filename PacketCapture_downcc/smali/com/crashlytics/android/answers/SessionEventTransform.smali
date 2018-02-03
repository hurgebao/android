.class Lcom/crashlytics/android/answers/SessionEventTransform;
.super Ljava/lang/Object;
.source "SessionEventTransform.java"

# interfaces
.implements Lio/fabric/sdk/android/services/events/EventTransform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/events/EventTransform",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildJsonForEvent(Lcom/crashlytics/android/answers/SessionEvent;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "event"    # Lcom/crashlytics/android/answers/SessionEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .local v2, "jsonObject":Lorg/json/JSONObject;
    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->sessionEventMetadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    .line 46
    .local v1, "eventMetadata":Lcom/crashlytics/android/answers/SessionEventMetadata;
    const-string v3, "appBundleId"

    iget-object v4, v1, Lcom/crashlytics/android/answers/SessionEventMetadata;->appBundleId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v3, "executionId"

    iget-object v4, v1, Lcom/crashlytics/android/answers/SessionEventMetadata;->executionId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v3, "installationId"

    iget-object v4, v1, Lcom/crashlytics/android/answers/SessionEventMetadata;->installationId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v3, "androidId"

    iget-object v4, v1, Lcom/crashlytics/android/answers/SessionEventMetadata;->androidId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v3, "advertisingId"

    iget-object v4, v1, Lcom/crashlytics/android/answers/SessionEventMetadata;->advertisingId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v3, "limitAdTrackingEnabled"

    iget-object v4, v1, Lcom/crashlytics/android/answers/SessionEventMetadata;->limitAdTrackingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v3, "betaDeviceToken"

    iget-object v4, v1, Lcom/crashlytics/android/answers/SessionEventMetadata;->betaDeviceToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v3, "buildId"

    iget-object v4, v1, Lcom/crashlytics/android/answers/SessionEventMetadata;->buildId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v3, "osVersion"

    iget-object v4, v1, Lcom/crashlytics/android/answers/SessionEventMetadata;->osVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v3, "deviceModel"

    iget-object v4, v1, Lcom/crashlytics/android/answers/SessionEventMetadata;->deviceModel:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v3, "appVersionCode"

    iget-object v4, v1, Lcom/crashlytics/android/answers/SessionEventMetadata;->appVersionCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v3, "appVersionName"

    iget-object v4, v1, Lcom/crashlytics/android/answers/SessionEventMetadata;->appVersionName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v3, "timestamp"

    iget-wide v4, p1, Lcom/crashlytics/android/answers/SessionEvent;->timestamp:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    const-string v3, "type"

    iget-object v4, p1, Lcom/crashlytics/android/answers/SessionEvent;->type:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-virtual {v4}, Lcom/crashlytics/android/answers/SessionEvent$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    iget-object v3, p1, Lcom/crashlytics/android/answers/SessionEvent;->details:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 61
    const-string v3, "details"

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/crashlytics/android/answers/SessionEvent;->details:Ljava/util/Map;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_0
    const-string v3, "customType"

    iget-object v4, p1, Lcom/crashlytics/android/answers/SessionEvent;->customType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v3, p1, Lcom/crashlytics/android/answers/SessionEvent;->customAttributes:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 65
    const-string v3, "customAttributes"

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/crashlytics/android/answers/SessionEvent;->customAttributes:Ljava/util/Map;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_1
    const-string v3, "predefinedType"

    iget-object v4, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    iget-object v3, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 69
    const-string v3, "predefinedAttributes"

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_2
    return-object v2

    .line 72
    .end local v1    # "eventMetadata":Lcom/crashlytics/android/answers/SessionEventMetadata;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_3

    .line 74
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 76
    :cond_3
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public toBytes(Lcom/crashlytics/android/answers/SessionEvent;)[B
    .locals 2
    .param p1, "event"    # Lcom/crashlytics/android/answers/SessionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/answers/SessionEventTransform;->buildJsonForEvent(Lcom/crashlytics/android/answers/SessionEvent;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBytes(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    check-cast p1, Lcom/crashlytics/android/answers/SessionEvent;

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/answers/SessionEventTransform;->toBytes(Lcom/crashlytics/android/answers/SessionEvent;)[B

    move-result-object v0

    return-object v0
.end method
