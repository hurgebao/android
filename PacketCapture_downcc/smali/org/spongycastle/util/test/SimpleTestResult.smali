.class public Lorg/spongycastle/util/test/SimpleTestResult;
.super Ljava/lang/Object;
.source "SimpleTestResult.java"

# interfaces
.implements Lorg/spongycastle/util/test/TestResult;


# static fields
.field private static final SEPARATOR:Ljava/lang/String;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/util/test/SimpleTestResult;->SEPARATOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/spongycastle/util/test/SimpleTestResult;->message:Ljava/lang/String;

    return-object v0
.end method
