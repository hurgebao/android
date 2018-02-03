.class Lio/fabric/sdk/android/services/settings/DefaultSettingsJsonTransform;
.super Ljava/lang/Object;
.source "DefaultSettingsJsonTransform.java"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildAnalyticsSessionDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;
    .locals 12
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v11, 0x1

    .line 123
    const-string v0, "url"

    const-string v10, "https://e.crashlytics.com/spi/v2/events"

    invoke-virtual {p1, v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "url":Ljava/lang/String;
    const-string v0, "flush_interval_secs"

    const/16 v10, 0x258

    invoke-virtual {p1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 128
    .local v2, "flushSecs":I
    const-string v0, "max_byte_size_per_file"

    const/16 v10, 0x1f40

    invoke-virtual {p1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 131
    .local v3, "maxByteSizePerFile":I
    const-string v0, "max_file_count_per_send"

    invoke-virtual {p1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 134
    .local v4, "maxFileCountPerSend":I
    const-string v0, "max_pending_send_file_count"

    const/16 v10, 0x64

    invoke-virtual {p1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 137
    .local v5, "maxPendingSendFileCount":I
    const-string v0, "track_custom_events"

    invoke-virtual {p1, v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 140
    .local v6, "trackCustomEvents":Z
    const-string v0, "track_predefined_events"

    invoke-virtual {p1, v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 143
    .local v7, "trackPredefinedEvents":Z
    const-string v0, "sampling_rate"

    invoke-virtual {p1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 146
    .local v8, "samplingRate":I
    const-string v0, "flush_on_background"

    invoke-virtual {p1, v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 150
    .local v9, "flushOnBackground":Z
    new-instance v0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;

    invoke-direct/range {v0 .. v9}, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;-><init>(Ljava/lang/String;IIIIZZIZ)V

    return-object v0
.end method

.method private buildAppDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/AppSettingsData;
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "identifier":Ljava/lang/String;
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "status":Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "url":Ljava/lang/String;
    const-string v0, "reports_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "reportsUrl":Ljava/lang/String;
    const-string v0, "update_required"

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 85
    .local v5, "updateRequired":Z
    const/4 v6, 0x0

    .line 88
    .local v6, "icon":Lio/fabric/sdk/android/services/settings/AppIconSettingsData;
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "hash"

    .line 89
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/settings/DefaultSettingsJsonTransform;->buildIconDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/AppIconSettingsData;

    move-result-object v6

    .line 93
    :cond_0
    new-instance v0, Lio/fabric/sdk/android/services/settings/AppSettingsData;

    invoke-direct/range {v0 .. v6}, Lio/fabric/sdk/android/services/settings/AppSettingsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/fabric/sdk/android/services/settings/AppIconSettingsData;)V

    return-object v0
.end method

.method private buildBetaSettingsDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/BetaSettingsData;
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 211
    const-string v2, "update_endpoint"

    sget-object v3, Lio/fabric/sdk/android/services/settings/SettingsJsonConstants;->BETA_UPDATE_ENDPOINT_DEFAULT:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "updateUrl":Ljava/lang/String;
    const-string v2, "update_suspend_duration"

    const/16 v3, 0xe10

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 218
    .local v0, "updateSuspendDurationSeconds":I
    new-instance v2, Lio/fabric/sdk/android/services/settings/BetaSettingsData;

    invoke-direct {v2, v1, v0}, Lio/fabric/sdk/android/services/settings/BetaSettingsData;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method

.method private buildFeaturesSessionDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    const-string v4, "prompt_enabled"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 108
    .local v3, "promptEnabled":Z
    const-string v4, "collect_logged_exceptions"

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 111
    .local v1, "collectLoggedExceptions":Z
    const-string v4, "collect_reports"

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 114
    .local v2, "collectReports":Z
    const-string v4, "collect_analytics"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 118
    .local v0, "collectAnalytics":Z
    new-instance v4, Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;

    invoke-direct {v4, v3, v1, v2, v0}, Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;-><init>(ZZZZ)V

    return-object v4
.end method

.method private buildIconDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/AppIconSettingsData;
    .locals 4
    .param p1, "iconJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    const-string v3, "hash"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "hash":Ljava/lang/String;
    const-string v3, "width"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 99
    .local v2, "width":I
    const-string v3, "height"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, "height":I
    new-instance v3, Lio/fabric/sdk/android/services/settings/AppIconSettingsData;

    invoke-direct {v3, v0, v2, v1}, Lio/fabric/sdk/android/services/settings/AppIconSettingsData;-><init>(Ljava/lang/String;II)V

    return-object v3
.end method

.method private buildPromptDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/PromptSettingsData;
    .locals 10
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 184
    const-string v0, "title"

    const-string v8, "Send Crash Report?"

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "title":Ljava/lang/String;
    const-string v0, "message"

    const-string v8, "Looks like we crashed! Please help us fix the problem by sending a crash report."

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "message":Ljava/lang/String;
    const-string v0, "send_button_title"

    const-string v8, "Send"

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "sendButtonTitle":Ljava/lang/String;
    const-string v0, "show_cancel_button"

    invoke-virtual {p1, v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 196
    .local v4, "showCancelButton":Z
    const-string v0, "cancel_button_title"

    const-string v8, "Don\'t Send"

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "cancelButtonTitle":Ljava/lang/String;
    const-string v0, "show_always_send_button"

    invoke-virtual {p1, v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 202
    .local v6, "showAlwaysSendButton":Z
    const-string v0, "always_send_button_title"

    const-string v8, "Always Send"

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, "alwaysSendButtonTitle":Ljava/lang/String;
    new-instance v0, Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    invoke-direct/range {v0 .. v7}, Lio/fabric/sdk/android/services/settings/PromptSettingsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method private buildSessionDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    .locals 10
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x40

    .line 156
    const-string v0, "log_buffer_size"

    const v8, 0xfa00

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, "logBufferSize":I
    const-string v0, "max_chained_exception_depth"

    const/16 v8, 0x8

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 162
    .local v2, "maxChainedExceptionDepth":I
    const-string v0, "max_custom_exception_events"

    invoke-virtual {p1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 165
    .local v3, "maxCustomExceptionEvents":I
    const-string v0, "max_custom_key_value_pairs"

    invoke-virtual {p1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 168
    .local v4, "maxCustomKeyValuePairs":I
    const-string v0, "identifier_mask"

    const/16 v8, 0xff

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 171
    .local v5, "identifierMask":I
    const-string v0, "send_session_without_crash"

    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 174
    .local v6, "sendSessionWithoutCrash":Z
    const-string v0, "max_complete_sessions_count"

    const/4 v8, 0x4

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 178
    .local v7, "maxCompleteSessionsCount":I
    new-instance v0, Lio/fabric/sdk/android/services/settings/SessionSettingsData;

    invoke-direct/range {v0 .. v7}, Lio/fabric/sdk/android/services/settings/SessionSettingsData;-><init>(IIIIIZI)V

    return-object v0
.end method

.method private getExpiresAtFrom(Lio/fabric/sdk/android/services/common/CurrentTimeProvider;JLorg/json/JSONObject;)J
    .locals 6
    .param p1, "currentTimeProvider"    # Lio/fabric/sdk/android/services/common/CurrentTimeProvider;
    .param p2, "cacheDurationSeconds"    # J
    .param p4, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 223
    const-wide/16 v2, 0x0

    .line 225
    .local v2, "expiresAtMillis":J
    const-string v4, "expires_at"

    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    const-string v4, "expires_at"

    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 235
    :goto_0
    return-wide v2

    .line 231
    :cond_0
    invoke-interface {p1}, Lio/fabric/sdk/android/services/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 232
    .local v0, "currentTimeMillis":J
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p2

    add-long v2, v0, v4

    goto :goto_0
.end method


# virtual methods
.method public buildFromJson(Lio/fabric/sdk/android/services/common/CurrentTimeProvider;Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/SettingsData;
    .locals 12
    .param p1, "currentTimeProvider"    # Lio/fabric/sdk/android/services/common/CurrentTimeProvider;
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "settings_version"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 38
    .local v10, "settingsVersion":I
    const-string v0, "cache_duration"

    const/16 v1, 0xe10

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 41
    .local v11, "cacheDuration":I
    const-string v0, "app"

    .line 42
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/settings/DefaultSettingsJsonTransform;->buildAppDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/AppSettingsData;

    move-result-object v4

    .line 43
    .local v4, "appData":Lio/fabric/sdk/android/services/settings/AppSettingsData;
    const-string v0, "session"

    .line 44
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/settings/DefaultSettingsJsonTransform;->buildSessionDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/SessionSettingsData;

    move-result-object v5

    .line 45
    .local v5, "settingsData":Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    const-string v0, "prompt"

    .line 46
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/settings/DefaultSettingsJsonTransform;->buildPromptDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    move-result-object v6

    .line 47
    .local v6, "promptData":Lio/fabric/sdk/android/services/settings/PromptSettingsData;
    const-string v0, "features"

    .line 48
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/settings/DefaultSettingsJsonTransform;->buildFeaturesSessionDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;

    move-result-object v7

    .line 49
    .local v7, "featureData":Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;
    const-string v0, "analytics"

    .line 50
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/settings/DefaultSettingsJsonTransform;->buildAnalyticsSessionDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;

    move-result-object v8

    .line 51
    .local v8, "analyticsData":Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;
    const-string v0, "beta"

    .line 52
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/settings/DefaultSettingsJsonTransform;->buildBetaSettingsDataFrom(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/settings/BetaSettingsData;

    move-result-object v9

    .line 54
    .local v9, "betaData":Lio/fabric/sdk/android/services/settings/BetaSettingsData;
    int-to-long v0, v11

    invoke-direct {p0, p1, v0, v1, p2}, Lio/fabric/sdk/android/services/settings/DefaultSettingsJsonTransform;->getExpiresAtFrom(Lio/fabric/sdk/android/services/common/CurrentTimeProvider;JLorg/json/JSONObject;)J

    move-result-wide v2

    .line 56
    .local v2, "expiresAtMillis":J
    new-instance v1, Lio/fabric/sdk/android/services/settings/SettingsData;

    invoke-direct/range {v1 .. v11}, Lio/fabric/sdk/android/services/settings/SettingsData;-><init>(JLio/fabric/sdk/android/services/settings/AppSettingsData;Lio/fabric/sdk/android/services/settings/SessionSettingsData;Lio/fabric/sdk/android/services/settings/PromptSettingsData;Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Lio/fabric/sdk/android/services/settings/BetaSettingsData;II)V

    return-object v1
.end method
