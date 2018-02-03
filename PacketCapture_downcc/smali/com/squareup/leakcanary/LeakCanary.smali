.class public final Lcom/squareup/leakcanary/LeakCanary;
.super Ljava/lang/Object;
.source "LeakCanary.java"


# direct methods
.method public static install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 12
    sget-object v0, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    return-object v0
.end method

.method public static isInAnalyzerProcess(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method
