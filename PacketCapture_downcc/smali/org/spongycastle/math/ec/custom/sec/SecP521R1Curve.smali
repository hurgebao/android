.class public Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;
.super Lorg/spongycastle/math/ec/ECCurve$AbstractFp;
.source "SecP521R1Curve.java"


# static fields
.field public static final q:Ljava/math/BigInteger;


# instance fields
.field protected infinity:Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    const-string v2, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v2}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;->q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 21
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;->q:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    .line 23
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-direct {v0, p0, v1, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;->infinity:Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;

    .line 25
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 27
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 29
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;->order:Ljava/math/BigInteger;

    .line 30
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;->cofactor:Ljava/math/BigInteger;

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;->coord:I

    .line 33
    return-void
.end method


# virtual methods
.method protected cloneCurve()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;-><init>()V

    return-object v0
.end method

.method protected createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "withCompression"    # Z

    .prologue
    .line 68
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .prologue
    .line 73
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 63
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public getInfinity()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Curve;->infinity:Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;

    return-object v0
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    .prologue
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 47
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 45
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
