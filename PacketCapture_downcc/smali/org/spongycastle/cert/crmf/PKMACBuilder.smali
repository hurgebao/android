.class public Lorg/spongycastle/cert/crmf/PKMACBuilder;
.super Ljava/lang/Object;
.source "PKMACBuilder.java"


# instance fields
.field private calculator:Lorg/spongycastle/cert/crmf/PKMACValuesCalculator;


# direct methods
.method static synthetic access$000(Lorg/spongycastle/cert/crmf/PKMACBuilder;)Lorg/spongycastle/cert/crmf/PKMACValuesCalculator;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/cert/crmf/PKMACBuilder;

    .prologue
    .line 18
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder;->calculator:Lorg/spongycastle/cert/crmf/PKMACValuesCalculator;

    return-object v0
.end method
