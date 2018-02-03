.class Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$1;
.super Ljava/lang/Object;
.source "IESCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/KeyEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineDoFinal([BII)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;


# direct methods
.method constructor <init>(Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$1;->this$0:Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoded(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 1
    .param p1, "keyParameter"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .prologue
    .line 437
    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .end local p1    # "keyParameter":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method
