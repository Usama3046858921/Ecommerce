import 'package:ecommerce/appColors/appColors.dart';
import 'package:ecommerce/screens/login_Screen.dart';
import 'package:ecommerce/screens/signUpScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../routes/routes.dart';
import '../widgets/button_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.baseGrey20Color,
      appBar: _appBar(),
      body: ListView(
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.only(bottom: 10),
            color: appColors.baseWhiteColor,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoGBxQUExYUFBQYGBYZGxoaGxkZFhkcGRwaFhkcGxwfHyEcHysiHx0oHxoaIzQjKCwuMTExGiE3PDcwOyswMS4BCwsLDw4PHRERHTApIigwMjAzMDAwMDIwMDAwMDAwMDAwMDAwMDAwMjAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMP/AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAFAAIDBAYBBwj/xABDEAACAQIEAwcCAggFAgUFAAABAhEAAwQSITEFQVEGEyJhcYGRMqGxwQcUI0JSctHwM2KCouEWkhUkQ3OyNFPC8fL/xAAaAQACAwEBAAAAAAAAAAAAAAACAwABBAUG/8QAMhEAAgIBAwIEBQMDBQEAAAAAAQIAEQMSITEEQRMiUXEFMmGBsRSRoUJD0SMzUsHxFf/aAAwDAQACEQMRAD8A8pFunKtPApwWl3NgSRha6FqUJXQlVcMY5GEroSpYpVLjBijBbpZKkApZaq4wYo3LXYp+Su5aq4YxSOuxUmSuhKq4YxyOK5FShacFqXCGMSELSCVOEpZKq4XhyHJSyVOEpZKly/DkOSlkqbJSyVLk8OQ5K6EqYJT1tzAipcmmpDZw5YwBrvy0A3J5AeZqHF8RW34bJlud2OfS3Oqj/P8AUeUc4uK8TkG1bMJzPNyOZ6KOQ9zrsLinInczldR1Oo6V4kl24zksxLE6kkyT6k06zhy2wJrT9kux7X4ZlZh0AP30r0rhfY62oAya9CKp8oWITEWFmeKnhV3fIarm3BhpHtX0OOy1kjxWh7Vj+23YJGUvZUhh/fvUXMDzIcVcQN2O7ap3a4bFQVjIrsAVg6BbgPLlm6b9aXbDsoLIN+x/h/vpM5J2Knmk/HmNsRi8K9psrgg/jWj7J9sjZAsYj9pYPh11a2Dpp/EnVfjobZe4mnD1APkf94HikaK8c4b3NyFM22Aa2wMhkbbXnH9DzoeVpdzd4YkUVwrUuSuZalwDjkeWu06KVSV4UjzprJM8hlEH3zafFdA6Vvb36FLwt5kxKlhJgoRPQTn0rCcT4Zfwd3u8RbZT9iOqnY0Xlb5TMa5aPmG05XQKekESNR1pwWhudBUBFiRhaflp4SnZKG4wLIwtdCVKFroWquHokQSnBKlCV0W6q4QWRC3TslSMIEmqF/iwH0ifM7USqW4gZMiYxbGpcy07JQr/AMVfcEQdNVUj200+aI4DGi5ps3Tr6VbIw3i8XVY3NDmSZKmsYN3nKsgbnQKPVjAHuaHY/iwU5bcE82IkDyUbH1OnTrQ6b18geO4eQ1IHoNhVrjJ3MVl65VOlBZ/iHDdsyVN62D6Oy+fiRCPiR51PdwbKobQo0hbiMrISNxmUkT/lOvlQa72cxCjMbTR96v8AZLtH+qs9u4neWLmly2QNx+8AdM3kd/LQ1ZxitonF1z66cbSTJXQlHOM8LtZFxGHbPYf1lT011jlB1B01mhWWknadZQGFiQhKpcXxYRcq/U0yei7aeZ1HpNEoigvaPDZLhkySfsBA/CmYwCd5k64smPy/eCqu8GshrozSQNSAJJ1gADmSSAB51Sox2UuKl9WcaDUa/vD6fWDr6gVoPE4K8zdYTsRfxFvOcSbd0L+ztKP2duR9JIMzyLATOusCrGC7XcR4c9u1j7f7EAqHabmcqZzZwS30/G+XQioODdtXVytrD3boG+RWYj/tBitTwvtpgsWRYxNoKwYHJeQEBxtow8J9RWfUwNMNo8qDuDvNpwjEW8RZt3rTZrdxQ6mI0br0PIjqDXeIYdAjNcIVFBZieQUST8VLgwigBICgaAAAADoBpFOxllXRkuAMjAhlIBUg6EEHQgjlQ7GDbAzwftPj1xzZMNhjcLCQyqxZMxOQu58IOUEkRAPhzEqTWM4rw+5Yfu7g18tvb3r6AxuN4fgUa2iW7YJLFbagSx0kx8V5Z+kS5avg3LehXcc6amTegNpGQ6bPMHdlX/WLVzDMfEgz2vJphl/laQY5GTUOSoexN6MUo/iVh8ifyo52gweW7mGzjMPU/UPnX/VQvs07HRefCD6GoIyVwWzMAEny1pY3FLbHUnZf69BVHD47EXGi1mBPK2CD8jX71FQneVm6lEOnk/SX/wBWYbqR6mPxNKq//SmKOvcvr5GlRaV9Zl/WN/x/mfRt27lts6KXYKSqaKzEDRZOg10mvNe3nC8Vi7Bu4g2bd1AHTD2wHfQHMHuEzmjkNKj4f2nxt3hzOqubmYJnCnbYtHWhHcWybtnu7iX7ah0vsZF25oWQllzSQTENHhPhpSAjiZmI7zHcJualeuvuP7+1Tvce5cFqyJY6adf751QuqUuMNiGPtrUvD7mW79ObXbMVnnqw261oK2bkXqGXHoHrzNbY/RjfdMzXkFyJy5Sdekz+VA7yXMPdNnELlcc50g7e1bDs92vtDD3EfvcyKW1fO2VtBkcgNHrqKynax1dUdURYZlLK7O+YbrcZ9WbVSD5mgFsaMiZTjOof+yXJXctM4de7xA3PY+oofxTFZ3FpTCzBPn/QUsISanZyZ1TEH9eJbucRtqYzT6a1ZsOriVMitL2U7JcPupsbziM8syspPVdCvxWa7VcKt4a53mFd2syUYkEqrifCGI8Wx6xG9XoB2Exr17g2wFfSCuMY2TkB0G/9K1v6OMDw9WX9adO+aMofMEB0hQ0ZM2o0msADWp4Nxm8tmCllrJOUW7qz3h0LAQZB1GsRJppTy0JgfMcjlm+094Xh9koUa0mUjWRy/pHnXgH6QDhLeKuW8DHdwAzKZUsdWCdF2GnQ8q9LwPbezd4dcNtRbKJ3QtnVUZlyqI5qJFeJYpArEAyBpNLxDc3JkB06pNw7Dd44U7bmASY6ADckwAOZNendn+IYfBFbeKw13DqwGS4wV1aTENl+gxqRJiK8/wCyuJFq8HYEwrER/EB/Qn3g8q9P4b2vL4cjEYQXMOVIud3et3HVDoS9sHMAOZ5eVHk9oCbDY7z0DCYG21sMhBVhII1BB9fwrzH9KfYuxbBxHeLbY8iNG1A2A0EkCTA13r0zsk+GXDouEhbMEqomBmJJ3kzJO9DO1+HwPfWr9+0buIXwWkGZyZna3OUnUmSNN+QpSkKbEMljsRPBeBcbuYZiIJtOIuWz9LKeY6NzDflR3FBU8Wb9mQHVjzRvpPryI6g0v0o2lN0XBaNptiDBkeqkiR086p38L3vDbTj6rRaf5c5n4BU+k0xgGAM2dJmfGGUb0LEis8YVnVFQkMcssYgHcwPnU0L42Sbkkzz5Trt9oovwXhVtUV3D5mJGfKRbUZGYjNsX0AjzPShnGmDOzL9OgHXRV19TMmooAahAy5Hy4SznvBttZNHbPD8ndnnoTp7mhXCbea6i9SB8mvRuIBcOA7g5QuyqC2nrIHrBonatpjxpYsx3CFw+EwDYy+bz3S+S3atYi5aAJzRJtEQYVmLNO0RtTLXELfFLN12Rrd2zli8SGe2HJyd46qveWSQQSVDJIJLAkq3hPCsPetvbOMtvh7hnuzbZbqGQwytMB1zDWI1IIgkVq+ynB8Hg0e1ZZrjXdGkqWYAGFOmUKAx0y8zNCzqBvzIFa7lX9Gvau45OGv6XLZy676GPsR+FaDtlx57KrbteK7dOVF8zz9BQzs/2Ft2cV3is3kC2YgaAAmJMAb0f452Xt3mBYvK/wMFJU7rJBgHbTXzFZzRNjiO42PMxuI4rheHol6+zPeuzF1EW5cbLo5si4QiICY7xpLQYBGoF/pFsW7uHtYyxda7ZvKwDOqB1ZZlTlVeYOhmCuhg1oO3HZJOJm0UxCWjaBQApqFn6CkgAqRoQR0jnVHjfBRYwK4bvLZt2gcozEu73C0sdBlBJfTWNByp4K1tFectvPJOFYs2ryXAJKsDHWDqPcae9b/j658OXTUqDcXzWJP8At8X+mvOikXI8zXpXBR+xtfyJ7ysVMvYzq/CrZXT6fzPMySzanUnUmvVOyWAxGFtC8uDS9agllS4RiAInMQRlP8okisBxDhLWsQ6KNFIYfymCv2Me1bvgnEbllLTvjWtXb7MLVsAOujBRnTu9AW0+sGibcbTmFSjENzPUOEXLOIspetyEcSAysCIJBBHLUGlWSX9KVu34MRaYXl0fLOWRzHkRB967SNI9JLb1hnsspOGKwILlgY0iaxXaXA30vIbGJuW7DPldMxIQ66JPJto5T0rL8O/SXjLSEL3Zkk6qdCTO01a4l2oF7Dm4922t1gCUWQRcV5ELrA0BPKiGNw1w/EUgzNdqbSjEOF20+aok6T+9pE6jTT+hpX7pZmY8yTXUtShI5EfcH8xWqqER8xNT0TsNfsw2YpJQqS2UZsp5dAOlA+2GVe9GclWHgTQhWB11GpGoIknc1kSkttvU+Ld4CO05NAIGn58udLCU13L12tVLXCMXlS6OgzD12/pQ1WMyNxzqTDCcw6j8NaYhgkdZBogKJlvkZkUHgXN12O4ji++VEm4jSPGVLDKsqZGoB18J6UH7YY28SLV+c/1MM8qJnwhBosfxc5NP7J9o7eGKZ1aAZAUeUEzTe1GOXE3jdQEKyjLmGsD/AJmgAptxDRC60p3gDAWszhSYnnRrs4s3hb7pCVac7s2VI5gDc6bczQMDWiGAxTLmI33J5wBTGBraJWgd56PjuF2bPD8QttAHuXbYDmNv8RjJ0GitXk2JWGPrW3w/aX9bt9wUW2ltu9UZi0wpthTpJ+tjWN4ikOR0MfFKQEGjNeVQcIYcEmafBcCHc2zIDMpKzADM2yySNToK2dvBcRvYzD3Sxs4W2qK1ouEFtbYhgqgwWbWLg2nXQagsHct4vAd0YFxFVZ5iIMx00oj+j/hKhLdy87MCAUtgkJEnISDyK5Tl86osQCYooCQIf7E8GxGHxd9QB+rv4kynwzzKj90GZjYHbSncY4Vi1t4u9bUNiWAFoaMTbLAEBTsoXMYMhm+rQAHWcIuk3W2K5QB5HWm8dwK3kKszIZOV0MOh6jy6g6Gkht9Usi/LPJO3uFxD4DD3MVbK4hAy3WyBcyl5tA5QFZgoMxtOutB+wV3Ml222qELodvFKsPcAfFaXjfB7vd4n9YvG4U8CgzAUIHza9c5Ecoas3+jhCReP8g9wSaaWtTNPQLXUAe8J3WuXLYw3dxbtMcpk+JkVfKNQ4MTPi1rK9oF8TAiCSfnMR+QrbcUuOwCqTpmIWDuxthjI8lUe1Y7tGuW6JGggR6HX71WM2019Vg8PARXc/t2gnht3JdRv4WB+CDXrmIuW8RhiYnMhB6/wn3kH4mvHbWh962vYzHuD3U+E/FMdb3nJxHapT4P2fum89kEaKrZ50+uBI817zTyB5V6x2U4bZwygISzn6nbf0HQViezVzMty/Gly45UwQe7twiD2hj6k1o8BxEl1VBLEwBSchJMNKAuazhd0/rDTtp/WjWKbxUD7OrLNmPiDEGjmKX5pY+WRvmEyXbDs2L83LTd3eA1/heP4vPzrD8L4Pddr1y8fDbY2lQsGOe2NZgkADMxH/ueVel4m74iKxnE8aExV+3P127d0Cf3gz2nPwLY9qtGO4lmrE8o4/Y7vEsvn+Neg8JWLFnqqKPcV51x7E58Q7f5vwr03Cj9kPT/8RTsnAnR+E14jH2lc4JXuFswDlAoJ6oxYf/I/FR9iLnfXQr4K2XtPm7x2bIj6MWAY6EmDlHSabxIMqFl0KeORvI3EeYke9c7NcXy2y5gZizknYBj4fhQB7UCk6TA+JYgma+x3hLtbewaYq6ty0jP4Sxy7lkVj+NKszx02b+Iu3S7tmYwyr4So0UjyygV2pFDDtMlgcKbjhRz6tlHzVnEYdbTQTJEzKwynmOh9RVRbgHWuXrhbf771s3nN2AkWar3Csp7wNsUJ+Ko5amwzRrE8o61R4hYTTAyEttUlvDO8kCYq5hOFF+qj/MP+NaYcS2qo2WNMo0mNNDv80Oq+IwYiu78H+ZzhuBZmOh8IPzVO4IY+taLg+PzAWymUgfPn61SxXCWZ3IHPT/ilhzqOqacnSqcSnHvvvBLpWks20OGRlMlfCf7+KzbKQYOhB/CtD2WveF7LRlbVZIBzDkOsj8KJ+LEHoGAylT3BH3gC4NT6mpbiAgGKWJsw7gcia4rEacqaNxMjLpYgwv2PjvWB/wDtk+6spG3oaF8YEXXXoxq/2XvAYhAQPFK6nSWBA+TAqp2lSMRc9QfkA0r+59pqYj9IPofyJe4LiSlu6QYzIUnkM3hzewJNeiYwCxbLyVt2xBAGqqumg9OVeacBgh1P96UQxeLxC2e5/WXNk6d2TMDpr+75AxtUKaoktpUNXInq/ZLtxgme4tu6Aoyx3kqdo/e31FFj2kwuIvGxavq14AvlWSMogHxAZdyNJmvnxeE3mb9nausT0tmjnAOHYvDXgEuPhbzCP2iFQQYMAkEMCQOUbULYV9YCuSbqaf8ASlizZa6JP7S1aETzFy8v3DE/6KAfo3ACXCf4gP8Aaai7cYZ0tK128b124/iuNpORTAUclWR/3Hal2CuBUuS31MIX+WJP+4CqYAJtN3w+z1QB9DD+JcQjRucpg7EKx/ECsf2u3UjSR6+f51r7hkkf5iPUk6R/fWst24X/AAiBG4j0peL5hOv8TH+g32mcmjvCnIQsu5DD5EVn6O8AaVI/v+960mebweYkTfdksj4a0EghVhoiVeTOYDbMZIncHmZqt2g48/D7qPaRXZg2jExGg0j1rJpavI2ew7I3PIxU+kggx5edVuKYi/eab913YT9bM0SZMchr000qhjBa7lNkZRpqbfsx+lBe8c307vMZEaiee9aHif6V8KiSk3G5IAQT5eXKvEbtsg71JhLJc/UBHWY+wNUcK3BGRp9BdnONnG4ZcQbXdFiwK5s30HLIMDp05Viv0k4oJiFKnxJhnzDoHuL3c66SdeunSKzvBbvFLa5cPduZBtluKbfqM2g+np67684xwprGHuNdfPdchrjZixkkgDMdW3YknmR0odCq3MMMzDiYxdW15n8TXrNo/s8v+WPaI/KvJ8P9a/zD8a9SwRIW2rGWCAGOsa1WbtOt8G/q+0ar5xlmGEyDzET8GKxGMv3rRu2LbN3ZJ8GUMcraiCQSNDyjnWzV40GpnXoOVY7G3mfFsqkiWC6dP6Aa0OHkx/xgDw1J5uaHAqO7tyg+heZ/hHnSqgcCX8QRoIGWFP0gQv8AtiuUzQJzP17+gmZFGeEcHnxXPCo5sQAfnlUtngJClsyqYkDKTAGvik0K7xLp8UW2iJA8BjqB9J89qstr2EEYD07Bsgv0HYy9xHAWS0W2DMeSmR7n6R81JgcCbdwqY8KqdOWaefrGtCbF57D7axBB2IP4jzo7w6611ncD6kCxOsqwb8Ko2BR4jFK5G1KtGxsPSWLVwlT11H5U98FbbwsgIHlz9fSqPelCQysNTpEbmpbONG/Un/ik0e06tqRTiS2cFbtjQREn5pYm/p5khfmPyqB8XnIRQWJ5DfT8qI2+Bs5VnfKBJyrqZPntpVH6y1GoacYgX9TR7uw1n3g1T4hh2Vics2x9MtBB/wAus78taOY7grDL3bERsZ1oFe4aEYi/cKHceAtI5+lNRge85/V4WQUV783QljhOPsmRekMf/UAn/uH5iq/GMItt5tsrIwkFTIHUeXoaYGtKQLYLsf3nEKPRf6/FX8PwzFNqdQYPicR8f8Ueym5mXVmXw6sjuBde/rBeGzZgU+oEEeoOhq72xfNfz/xqraiCNCCPkGtFZ4LbCMbgkwcxzNA0mF2+azeNbvbdpo1UMhO85DIJ88rCfSqDhjcbl6VsOM4ydzv+0o8Ov5GDctj6VrOE8RKHRgFbdomAax2WJFTYfFsnOjIuYVfSNJnp/DeFYO4AzXGJ5kXmUn4NF+NcVw+GsZLTh7ZkG27ZyuhkgmTFeQrxQjkPvVbE4tn0+1AcVnmX4oHAlrtJxdsRcBJ8KyF6anU++nxV/sjimC3bYAIOVvOQDHyY+KA3MMQoYjeiPZnEqjsGmGRhpvIEj8/mrYArQjOmdkzhm2hPE8ZItqu7MwYmT5nf3X4qbtllexbuDmVby8YMx9qzWKu5mzDQch0HKjRuG5w8qR/hsdf9QP4OaEppr3mz9S2YZEb02+0zZojwO9leOtDyKkRogjlrTSLnLxsUYGauwZYCYnnVzEcDw4UO1x3PNRGv50EweLDgaw3Tr6UW4XxBLRJdZPXp/Sh37TQ6qTfaJODgH/6IuOUltfaRWm4ZwmxdQLiOHd2mwuKGVh6Ny9Ks8O7Q2SAcwoxa7XWFGV2Ug7jlHn5UlnY9pFRRBFzs8uEXNZxBZD9QYa7b+Z9ufOsd+kDiytaSypkls7H0BAH3n2q52m7RIC/dk5CTl11On4Vg8XiC7FjRoh5MDI4A0iNw75WVh+6QfgzXo/8AhhWDZgZYnTUtO3sa80rYWSThgS3iKI2sfSBl+ZB+9TKLqbfheXQWH0uFcPfDIzbA66/zn+n2rKWBLXr38TMif6ySx66Jp/rFEcKHuTaTQZBmPQfUfuwFEOw/Bku3bXeqww1kM91yIt5h42VmYZdSEtxMkVMagXC+J5jkVdtt/wB5sOBcZw+Gw9qzfxbW7iqCyKmgz+MfSImGBPOSZ1mlXnXFMWb165eufXcYucpEDMZAEdBA9qVNnJow5iwMuUD6jB86oYjsvZIIEhjsZ0Eb6VftsCy+WvxU1m5LN5afmawhivE9k+HHl+cAzO/9P3VyoXDIxgiJyjqAdvUUT4bw7ujA2okW1qK7dyrPM6CrORm2i8XSYsR1LJLqgyCAR56igvFOGK0i2SrAT5a8vL2onbuatOwAofaxPgZ+bvp6DT8BUWxuJefQw0nvB3BwbVwj946H0rQ8DxEq6/w3D8EA/mazvFXy3Mw0Ig1e4VigLziYzhWjzIg+vtTXGoXMfTuMWQIOAfyIawl8GVJ5n8arvwu1eabqk3FAEFjBXlUVzDnUzoT96vcOw9y59QgDZ+ft1pQ23E6DEONLi/eCMdw1ExFlbShSZ2G5ExM1cu49LQR3OVSvuYA2HM0dv8OtBhdILOg8JJOk+QgfNYHtZBuGIgbRTR56BnNyaulL5UreqE5x7tG94ZE8FvpzaOvl5U/skBc7yydyM6+q6MPcEH/TWfqxw/FtauJcXdSD8bj3GlOKDTQnITqnOcZchv19pd45g+7YNGh09xQ2a2/H8Ml6x3lvZgGHqNx8TWNu4VlMERVI1jeM6/Doy2vDbiQgUS4bw5nKiNWMD01n7TS4Pwl7rgAE61qbPDRbbM7gKBAJYKJnUyY002qneuIHSdOcmQXx39ozj3BP2YyDYfhWQw1sK/iYrE6wZkggba1veI9qMLbBAuZz0QFvuTH3rIG8cTe0UKNSAPM8z/YoU1Ab8TodcMOR18MgnihKhwlwDNkOX+IAlfkbe9EeB3lazfskeIoXQzpKgBh6mB8VrrvELWDsAsAXI8CDQsfPoo5n86w+C4gXxQuvAztDQIUBxlMAdAftRAlluply4l6fKFDWTsfvKV2zvTVOlGsXgCpIIoI65WIola5nz4GxHedtXINXl4gfXyNDmpNRxAYiFRjh/CPk0y9xHTRR9z+NDMxpE1e0rWY+7dLGSaY1sxNWcNhSYHMmKL8R4ZlUacqWzgGo/F0r5EZx2nL9y13aju1Fv93QBidpZtyxgk/A0FWLeITue7E5QAM2pgZi0GJG0xBPLpVHCYPLbUvBzZiiMpjL9Jbcc5jfYmoUuqgdVBZCQYnWYZSJG4g7xyFRhYgYGZHNGtjLnD8fdtXmdUzIdGEjKV/m2BHnRy/xp7Npu4uvb7xYbI5XW4QxkAxmCKvi3GYQRQbHYdlCvKowCSoaCWeWhVGuVVgMZ39aj4rcDBlnRdXbckswndvEdQI6LvANQKLuW/UMy6CbF3IbZwxANxr5c6tkRcsnlrrI2PmDSqm+OtrothWAjxM1wMdNSQtyBrOgrtFUTqmnsY1VncnWOlPwWI8IJ3Mk+5oO7wPM069igvOP73FZvD9J6f8AUadyYbbEjrUN/EAtvoug8zQC7xNj9A9zVI523JPp/cUS4fWZcnxMcILhzjHFFFtlRgWZoMclG/zVcYj6BGiroOpY6e0a0LuI1vXYnT0mrNnE6ktqBEnnpyFHoAG0yr1TO5L7cSzxK5mYrEsyj8KpXLxzrl0OQD3qfvc1wmCNAI5jSqN9oceUVajtAzuT572J/EKcI4pdZssjTWSJAg8x9q09/ipFtbg0yshIn/MuZT7EnzGtZLh1uAxHPzGw/wCZomlzPYuJ+8F26xt7yKWyi5rwZWGPc2d5oOMY4wY/sVkcZaLDMdaO2MRntjzQH7a0LRdlPOfY1S7R+UjItHiZ98MdfKogh6GtGDaCMHcBsxkQSdIGwnpUNoAnLaUzr42H4D+vXamhzOS/SoO/27xcDxVy0pRx+zfkzAGdJKzvodvOjrcRwr6XVYED6kyvn6SAZDRE7iedZzgvDGxDuWaSpXNOs52y/n9qO4TgC2rg8WhnlvBPWgegZo6fG+ZQgGwPfkSTD4tu7udxhyVYEZrlwIxUgyFCkHrzoHetWMRBt/srsR3bHwMRp4WOx8jW5TCZlgaDkT+PnQ//AKQw4Jdwzk8s0L8DX70CuBzNmToCAFSj63/0RPPcRh2RirCCNKucP4j3AJQAuREkSBPlzNaPtQqjRVA5bchtWPvbmnK2oTl9RiPSv5Tv+I7FYlrjF3Ysx3JMmohSrlMmIkk2ZvGIvWUvDUkDN5MNG+4+9ZrjuGhg+06H1q/2Jx4DNZY+FtR/MBr9oPtRDtFw/wADiNhmHsZ/Csw8r1PQMB1XS6u4G/uJjQaRNIiK5WmefuI1ZweGLGorNok0ewmDItk5SecCdT0/vzoWaoeNCxk/Z3BZruY7Jp/qO/5Uf41hRkLEaAEmImANYmq3AsEQEk6tJgbCau9pu8WxcNsAwDmmPpIIJE8wSDHrFZidTz02NPA6Qit6J+8wmJx2Yk5Su2UAzAUQo84Ef2aL8GxFoMXKDxAt7qDKAHfX7FTTsP2GxVxc8p5pmOePLTLP+qqN/A3sOxtujWwxGlwSrEeuh5aitGx2nmlZkbV3nL9/PdzkAZSWZo01bz0jWR/NVDiQlpmSZPoJI9+RnzojxC21sFGUbguyMWEQP4vEPcVZ7I2+8uNb7lbllmlmYeJRBgzOh8tR+NWTQuTEniOF9ZmIpV6K3YvD/wCb/vNKh8VZv/8Ak5vp+8yg139T6Co8YC5B000g7RrHxr80gKfdPKhGxjXAZSDxIMgjxAkjrt7Dakrk+nSuXG5UxDvRczHYU0JBiWlq6hk67CSajYyals2iVgbt+Ao+BEC2YyfANoT1NQ45dQatJbyjL0ptxASB5z8UAO9zUy3jC95ZssqrDaCAJ5+vnTuGYiLse0/ukeY5j71XI3kkHbyNQYDEHvFJjpsKqrhNkKkCE+E4/KoUj6ZHprtVq6gMMORmgFrxFxsdTp60/C4xlO9UUlp1AAAaGRwhJzkzJn5ongbSgroP60Iw/EvDBqbD46fY0JBmxPDrygSLgF/Lev29JLCJ2m25jU6DfetetlAczakeWg1PL86w2Bwue/cYzkBM+rGYrVYHEkrlmWUc/wB5dgfXYEz0NVkjPhq6QzN3P4hfB4tbgYqdjB8jE/nUGNxWlCeHYnJiL6A+E5WHxB/L4rnEnY/jSa3qdAZLQt9T/EEcaxGYVnsSnOjLDMTzqniLNaUNTh9YhyeaC6VT/qxyz7VEUNNucoqRO2bpVgymCDIPmK3eC4mmIsg/vLGZeY6+28f/ALrCJYY7CiGCw9yywfOqGDGadYJBED0pbqG95t6LqHwk7Wp5/wAwn/4L3iZl5aHTy0PuNfmh1zhRBo0vFGtmbbWwCAuVixDKuxIADAgdOp61Jd7RIE8NmW/nOQHy8IJ5nXrzqgWlZMSFvLxIuz3BM7idp/OrWP4syAsmGfullQXIWerEamfy96q2LuLug5XWynIAQdfuOdUbXGr+Hc27sXF2KtqCPJtx9/SqrUY5AcIDNYHY0Jy92wu/+mqJ0MZm/wB3h+1Vk4vfvMe8uuwysSJ8IAU65dFgf0q7fwFnEKXw/haCWtnQiOn8Q8x9qK9ksNYS0cyqbhzZ8wkxmhV12EAHTefKiBVRxFZjnc7tYPe9pZ7P9tghGdSoO25Ggj4rXPxaziLZVwrg8iAQR5iINZnFdibd0Zrbd2d4USvx/Sg7YHFYRpyG4g3ySdOsHUH7Uug26mCCy7MLEIdo+xiMpuYdiNP8MmQY/hnb0mPSgPYvHXbV8WlUftGVXDiCAkk+YIGbT00rV8N4j3kGfbbfyqPiOFXvluFQCIGcaMNefvHpVh/6TLVdLh17Q3NKqy3pElgD/TSd+e/vSpNGehHUJ6zzoPFRs06mkRTCeftWkTgMxqNLU0HSuuvOmDajiCZFcQzoKltAHSYjaKjmJqOzcg1ZiwQGhJJiDrSzQw/veq4xAnU0932J8/yoKmrxARtFevEGBUNj6hTrldVYYSRVjiJJJa42w8XJ9ajvCGNMbc+tOuNMGiiy21fWT4a54vI1Ywrw5HvVUuI0Amp8KPGp66H4oDNGJiCAPWGMOwAbkGJOvWAPyFEOC3pIB0I2kAiDv/frVFGKo0gR0iIEbTz5feq9u/kZWE5Z6z5EelJIudtGCAXxL9wlMbqIzr/X/ir9wZg3lQ7jZ8dm+Ns0EjbqPzq/abxGOdCw2Bh4jTMv1/O8BssMdKbeSYI1Bq5iLJBNVVf9k/UA0YMzutWD9Y+3w+bakc4Pz/8A1UB4aB4nIVZ3P967HaqycUxBAUNAEbKoPzE1JbwTv4mJJ6kyfvRURyZk1q4AVT9429jcqnu18szCd42HqNz1qjZw73Mz6tl1YnUwNSaOYzhkWHPTKf8ActW+wWFFy1i1gk91AjlnV1/GKNaraYs6uGAbiB34Iyk6beRotwnh7ESwGnWjl1wUzDZlzT5EA9fOquBbcGkM5M7mDo0WjJ2saabDX3oDxng7XCGA8q0Vo6HT0qcKAoJHU0CuVNzZm6Zcq6TMFh+DuGnUZSNRuNeXnWpYJfIy+BiTqsDc8xzPrVkHLYe4Fk6nQToCJ+0n2oMlpmuZ7L67kMdD6HlTdRacPqunXAwVe+8PYfFYjD/UM69VBJjzUyfifQUTwnFUuiQRP50GwfFjIS6Cjcgefodj7Vf7m3mzADMRqRoSPPr70JEzg+ku38VkBaJHlvWe45jc6+E0uL4shWUNIPKKCu5yxVqsp2qWbfFmAFKhkClR1E2ZTLc6Yw0A+a4xpoJ1NMqMLRmcxFLODoK5Sb8auJ3jZ0NQ1Ow0qJEk1cBhO2NwelWQJ85qGRsPnrTgWjTQVRhIa2ixA+KlD+CogNdd6kutAipCXuZVNIVLhlB3qS/ZESKu4AQkapy1akA+oNXOEGH2JAn2nn/fWq/DrwEqdjr8URSyEMnmY3jlptQOZs6VAWVh25lz9dVRJ1GxHPX1odiXCOGtGQfw6VYuWn5+JSD57UMe6pUAJBHPNrQKomzqcrAUdvT1hbipLYdWBIhgWXZSDsY6gj71LgccYBPIVXxV9ThQPEDMaar116eVULAYoSvKoFtfvLbNoy2N7AM0bOG16/NQWcMJIOzUEsY9l5/NFMNj5186EoVjsfUY8p+svfqCLGlTWLYBMf3IpqXwVpW7oml7zcEQcSTGp/5e7H8DH4E/lVH9G+JC37oJibfWPpI66RqauO8o69VYfKkVm+yuIy4m30fwH/XpT8XBnG+KKAy+01fDX/YWv5FHLcJHryqpgrsGn8PebSxqAzCSNdLjDlpPlFVrbQWHnSSNzOrhe8an6D8S+2Jyt4TPzFdxWPZlOkcveqO5qXEHQAUNR+s1LOKx/cYctPiC6fzHb76+1ZDhfEWRtdqu9rMXLLaHISfWNPtQS1WlE8u8898S6gvmpTsNv8zb2uIpcQBwCNNxPoafxDFAeFT7zWJs4oqdzHT+nnR7CEsAcwNCUqZkyWJLDb/hrUN5tanuKRzqIrUEEmV8vrSq5C+dcq7lVM9c1NOZq5SpkkYa41KlUlTjE+1NF2Nh/wA0qVFAveWnwTt4oAkDQQOVOt4VjodPilSoCZpCC5XbRoOwNNvvJ8hSpUQmduD7ztvapEM0qVSEO0rtpWgtIO7RTsyjXmCBSpUvJ2m34ePM3tO2WYQAeR38qCXB4j6/nSpVWPmH13yrLxb/AMuR/mB+9c4I/iZf4hSpUR+UwP72P2lXFJlYjzp9m7ApUqLtM58uU1CGAxZKny1pDGnOKVKlULM6IyvoXfvC9pswrK8I0xFn/wBxP/mBSpVeLvFfFP6fvNTw0+BwBtcfWdvFm9TvUbDxGlSpbfMZ0Ol/2V9pNb0qJ2MilSoZobiZbHMxuOW+okzTSYFKlWscTyT/ADH3kTmifArdx8wRgAupmftHU0qVU3EPEAXFx68Tzf2atjFi2uZteg6mlSoDzKswTc4jcJJzlZ5DYelKlSo4Fz//2Q=='),
                    ),
                  ),
                  Text(
                    'Aqeel Baloch',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Phong Colony......Sui')
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            color: appColors.baseWhiteColor,
            child: Column(
              children: [
                listTile(leading: 'Full Name', trailing: 'Aqeel Baloch'),
                const Divider(),
                listTile(
                    leading: 'Email', trailing: 'usamamughal9211@gmail.com'),
                const Divider(),
                listTile(leading: 'Address', trailing: '123123'),
                const Divider(),
                listTile(leading: 'Payment', trailing: '6011 **** **** 8921'),
                const Divider(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            color: appColors.baseWhiteColor,
            child: Column(
              children: [
                wishList(leading: 'WishList', trailing: '5'),
                const Divider(),
                wishList(leading: 'My Bag', trailing: '3'),
                const Divider(),
                wishList(leading: 'My Orders', trailing: '1 in transit'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: btnWidget(context: context, clr: appColors.baseDarkPinkColor, txt: 'LogOut', fn:()=> auth.signOut().then((value){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
            }))
          ),
        ],
      ),
    );
  }
}

Widget wishList({required String leading, required String trailing}) {
  return ListTile(
    onTap: () {},
    tileColor: appColors.baseWhiteColor,
    leading: Text(
      leading,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    trailing: Wrap(
      spacing: 5,
      children: [
        Text(
          trailing,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          size: 20,
        ),
      ],
    ),
  );
}

Widget listTile({required String leading, required String trailing}) {
  return ListTile(
    tileColor: appColors.baseWhiteColor,
    leading: Text(
      leading,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    trailing: Text(
      trailing,
      style: const TextStyle(
        fontSize: 16,
      ),
    ),
  );
}

_appBar() {
  return AppBar(
    elevation: 0.70,
    centerTitle: true,
    backgroundColor: appColors.baseWhiteColor,
    title: Text(
      'Account',
      style: TextStyle(
        color: appColors.baseBlackColor,
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.edit_calendar_outlined,
            color: appColors.baseGrey10Color,
          ))
    ],
    shadowColor: appColors.baseGrey10Color,
  );
}
