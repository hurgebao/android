.class public Lorg/spongycastle/crypto/params/MQVPrivateParameters;
.super Ljava/lang/Object;
.source "MQVPrivateParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private ephemeralPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

.field private ephemeralPublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

.field private staticPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 0
    .param p1, "staticPrivateKey"    # Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .param p2, "ephemeralPrivateKey"    # Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "ephemeralPublicKey"    # Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->staticPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 25
    iput-object p2, p0, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->ephemeralPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 26
    iput-object p3, p0, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->ephemeralPublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 27
    return-void
.end method


# virtual methods
.method public getEphemeralPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->ephemeralPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method

.method public getEphemeralPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->ephemeralPublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method

.method public getStaticPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/spongycastle/crypto/params/MQVPrivateParameters;->staticPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method
