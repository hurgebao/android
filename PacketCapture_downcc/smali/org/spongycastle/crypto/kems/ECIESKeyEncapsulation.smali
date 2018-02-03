.class public Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;
.super Ljava/lang/Object;
.source "ECIESKeyEncapsulation.java"

# interfaces
.implements Lorg/spongycastle/crypto/KeyEncapsulation;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->ONE:Ljava/math/BigInteger;

    return-void
.end method
