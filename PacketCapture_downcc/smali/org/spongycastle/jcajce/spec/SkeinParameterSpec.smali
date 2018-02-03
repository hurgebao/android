.class public Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;
.super Ljava/lang/Object;
.source "SkeinParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$1;,
        Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;
    }
.end annotation


# instance fields
.field private parameters:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;-><init>(Ljava/util/Map;)V

    .line 88
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "parameters"    # Ljava/util/Map;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    .line 93
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/util/Map;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    return-object v0
.end method
