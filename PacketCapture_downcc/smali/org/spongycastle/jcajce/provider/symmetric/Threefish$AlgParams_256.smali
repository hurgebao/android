.class public Lorg/spongycastle/jcajce/provider/symmetric/Threefish$AlgParams_256;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;
.source "Threefish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/Threefish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams_256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "Threefish-256 IV"

    return-object v0
.end method
