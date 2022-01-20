//
//  Games.swift
//  Health
//
//  Created by Abdulaziz on 30/05/1443 AH.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {
    
    static var ins:GameViewController!
    @IBOutlet weak var gameView: SCNView!
    
    var boxs = [SCNNode]()
    var rotMap = [Int:Int]()
    var faceMap = [Int:Int]()
    var turnMap = [Int:Int]()
    var topShow = 1
    var level = 1
    var rotateTic : NSDate?
    let colTab = [
        UIColor.cyan,
        UIColor.red,
        UIColor.blue,   // back
        UIColor.yellow, // left
        UIColor.purple, // top
        UIColor.green,
        UIColor.white,
        UIColor.init(white: 0.7, alpha: 0.1)
    ]
    func transShow() {
        for f in 0 ... 26 {
            let material = boxs[f].geometry!.materials
            material.map { m ->  Void in
                if topShow == 0 {
                    m.cullMode = SCNCullMode.front
                    if m.diffuse.contents as! UIColor == colTab[6] {
                        m.diffuse.contents = colTab[7]
                    }
                }
                else {
                    m.cullMode = SCNCullMode.back
                    if m.diffuse.contents as! UIColor == colTab[7] {
                        m.diffuse.contents = colTab[6]
                    }
                }
            }
        }
    }
    let boxsize = Float(1)
    func makeCube(parentNode:SCNNode) -> [SCNNode] {
        let boxface=[[0,4,6,6,2,6],[0,6,6,6,2,6],[0,6,6,5,2,6],[0,4,6,6,6,6],[0,6,6,6,6,6],[0,6,6,5,6,6],[0,4,6,6,6,3],[0,6,6,6,6,3],[0,6,6,5,6,3],
                     [6,4,6,6,2,6],[6,6,6,6,2,6],[6,6,6,5,2,6],[6,4,6,6,6,6],[6,6,6,6,6,6],[6,6,6,5,6,6],[6,4,6,6,6,3],[6,6,6,6,6,3],[6,6,6,5,6,3],
                     [6,4,1,6,2,6],[6,6,1,6,2,6],[6,6,1,5,2,6],[6,4,1,6,6,6],[6,6,1,6,6,6],[6,6,1,5,6,6],[6,4,1,6,6,3],[6,6,1,6,6,3],[6,6,1,5,6,3],
                     ]
        var nodes = [SCNNode]()
        var f = 0
        for i in -1 ... 1 {
            for j in -1 ... 1 {
                for k in -1 ... 1 {
                    let node = makeBox(colors : boxface[f],
                                       pos: SCNVector3Make(Float(-k)*boxsize, Float(-j)*boxsize, Float(-i)*boxsize))
                    nodes.append(node)
                    parentNode.addChildNode(node)
                    f+=1
                }
            }
        }
        for i in 0 ... 26 {
            rotMap[i] = i
        }
        for i in 0 ... 17 {
            turnMap[i] = i
        }
        
        return nodes
    }
    func makeBox(  colors  : [Int], pos : SCNVector3) -> SCNNode {
        
        let node = SCNNode()
        
        let box = SCNBox()
        
        box.chamferRadius = CGFloat(0.2*boxsize)
        box.width = CGFloat(boxsize)
        box.height = CGFloat(boxsize)
        box.length = CGFloat(boxsize)
        box.materials = colors.map { colind -> SCNMaterial in
            let material = SCNMaterial()
            material.diffuse.contents = colTab[colind]
            material.locksAmbientWithDiffuse = true
            return material
        }
        
        node.geometry = box
        
        node.pivot = SCNMatrix4MakeTranslation(-pos.x, -pos.y, -pos.z)
        return node
    }
    
    var remainCmds : [Int] = []
    var remainAni : Int = 0
    func dm(_ tip : String ) {
        print("====\(tip)============>")
        var k=0
        for _ in -1 ... 1 {
            for _ in -1 ... 1 {
                print("\(String(describing: rotMap[k]))  \(String(describing: rotMap[k+1]))  \(String(describing: rotMap[k+2]))")
                k+=3
            }
            print("  ")
        }
        print("<=================")
        
    }
    func rotateMagic(_ boxs:[SCNNode], _ cmds:[Int], _ anim: Bool) {
        if remainCmds.count > 0 || remainAni > 0 {
            remainCmds.append(contentsOf: cmds)
            return
        }
        let rtab = [[0,1,2,3,4,5,6,7,8],     [18,19,20,21,22,23,24,25,26],
                    [2,1,0,11,10,9,20,19,18],[8,7,6,17,16,15,26,25,24],
                    [0,3,6,9,12,15,18,21,24],[2,5,8,11,14,17,20,23,26],
                    ]
        let rottab = [ [[6,8,2,0],[3,7,5,1]],  [[0,2,8,6],[1,5,7,3]],[[0,8],[2,6],[1,7],[5,3]]]
        let vtab = [[0,0,1],[0,1,0],[1,0,0]]
        var acts = [[SCNAction]]()
        for _ in 0 ... 26 {
            acts.append( [] )
        }
        let c0 = cmds[0]/6
        for (ind,cc) in cmds.enumerated() {
            var r = CGFloat(Double.pi/2)
            let c = cc/3
            if c0 != c/2 {
                remainCmds.append(contentsOf: cmds[ind...cmds.count-1])
                break
            }
            var t = cc-c*3
            if c%2 == 1 && t<2 {
                t = 1-t
            }
            switch t {
            case 1:
                r = -r
                break
            case 2:
                r *= 2
                break
            default:
                break
            }
            if c >= rtab.count {
                break
            }
            var dura = 0.0 // (anim) ? 1 : 0
            if anim {
                dura = 0.5
            }
            let rotate = SCNAction.rotate(by:r, around: SCNVector3Make(Float(vtab[c/2][0]),
                                                                       Float(vtab[c/2][1]), Float(vtab[c/2][2]) ), duration: TimeInterval(dura))
            for ind in rtab[c] {
                acts[rotMap[ind]!].append(rotate)
                
            }
            let rt = rottab[t]
            for vs in rt {
                let v0 = rotMap[rtab[c][vs[0]]]!
                for i in 1 ... vs.count-1 {
                    //                    print("\(rotMap[rtab[c][vs[i-1]]]) => \(rotMap[rtab[c][vs[i]]]) pos:\(rtab[c][vs[i-1]]) => \(rtab[c][vs[i]])")
                    rotMap[rtab[c][vs[i-1]]] = rotMap[rtab[c][vs[i]]]
                    
                }
                rotMap[rtab[c][vs[vs.count-1]]] = v0
            }
            
            //            dm("1")
            
            
        }
        
        for i in 0 ... 26 {
            if acts[i].count <= 0  {
                continue
            }
            remainAni += 1
            boxs[i].runAction(SCNAction.sequence(acts[i]), completionHandler: {() -> Void in
                self.remainAni -= 1
                if self.remainAni <= 0 {
                    if self.remainCmds.count > 0 {
                        let cmds2 = self.remainCmds
                        self.remainCmds = []
                        self.rotateMagic(boxs, cmds2, anim)
                    } else {
                        self.judgeState()
                    }
                }
            })
        }
    }
    
    func judgeState() {
        let sumw = boxs.map { b -> Float in
            return b.rotation.w
            }.reduce(0, +)
        if sumw < 0.00001 {
            
            let rotateToc = NSDate();
            
            let timeInterval:Double = rotateToc.timeIntervalSinceNow-(rotateTic?.timeIntervalSinceNow)!
            if timeInterval < 1 {
                return
            }
            let formatter = NumberFormatter()
            
            formatter.minimumFractionDigits = 0
            formatter.maximumFractionDigits = 1
            let tin = NSNumber.init(value: timeInterval)
            let ti = formatter.string(from:tin)!
            
            DispatchQueue.main.async {
                 self.dialogOKCancel(question: "LEVEL \(self.level)", text: "Good job in \(ti) sec !!!")
//                if answer {
//                    self.resetMagic(random: true)
//                }
//                else {
//                    exit(0)
//                }
            }
        }
    }
    func dialogOKCancel(question: String, text: String) -> Void {
        
        let alert = UIAlertController(title: question, message: text, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { action in
            if action.style == .default {
                self.resetMagic(random: true)
            }}))
        alert.addAction(UIAlertAction(title: "Next Level", style: UIAlertAction.Style.default, handler: { action in
            if action.style == .default {
                self.level += 1
                self.resetMagic(random: true)
            }
        }))

        self.present(alert, animated: true, completion: nil)
        
    }
    
    override func awakeFromNib(){
        super.awakeFromNib()
        
        // create a new scene
        let scene = SCNScene()
        
        // create and add a camera to the scene
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.camera?.usesOrthographicProjection = false
        // place the camera
        cameraNode.position = SCNVector3Make(0, -1.30, 15);
        cameraNode.pivot    = SCNMatrix4MakeTranslation(0, 0, 0);
        
        scene.rootNode.addChildNode(cameraNode)
        
        // create and add a light to the scene
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light!.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 15)
        scene.rootNode.addChildNode(lightNode)
        
        // create and add an ambient light to the scene
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light!.type = .ambient
        ambientLightNode.light!.color = UIColor.white
        scene.rootNode.addChildNode(ambientLightNode)
        
        let geometryNode: SCNNode = SCNNode()
        scene.rootNode.addChildNode(geometryNode)
        
        boxs = makeCube(parentNode: geometryNode)
        
        geometryNode.transform = SCNMatrix4MakeRotation(-2.1, -0.4, 1, 0.3)
        //        geometryNode.transform=SCNMatrix4Mult( SCNMatrix4MakeRotation(-2.1, -0.4, 1, 0.3),
        //                                              SCNMatrix4MakeTranslation(0, 1.2, 0))
        
        // set the scene to the view
        self.gameView = self.view as! SCNView?
        self.gameView!.scene = scene
        
        // allows the user to manipulate the camera
        self.gameView!.allowsCameraControl = true
        
        // show statistics such as fps and timing information
        //self.gameView!.showsStatistics = true
        
        // configure the view
        self.gameView!.backgroundColor = UIColor.white
        
        let bdefs = [("U",  6), ("D",  9 ), ("L",  0), ("R",  3), ("F",  12), ("B",  15),
                     ("U'", 7), ("D'", 10), ("L'", 1), ("R'", 4), ("F'", 13), ("B'", 16),
                     ("U2", 8), ("D2", 11), ("L2", 2), ("R2", 5), ("F2", 14), ("B2", 17),
                     ]
        
        let btnw = 35
        let btnh = 35
        let btnspn = 10
        let screenw = gameView.frame.width
        var posx0 = Int(screenw)-btnw*6-btnspn*4
        posx0 /= 2
        var btntop = btnh * 3 + btnspn*3 - 30
        btntop = Int(gameView.frame.height) - btntop
        
        for (ind, binfo) in bdefs.enumerated() {
            let srcimg = UIImage(named:"rotate\((binfo.1%3)+1).png")
            let button = UIButton()
            button.setImage(srcimg?.maskWithColor(color:colTab[binfo.1/3]), for: .normal)
            button.addTarget(self, action: #selector(self.doRotate), for: .touchUpInside)
            button.tag = binfo.1
            button.frame = CGRect(x:(ind%6)*(btnw+btnspn)+posx0,
                                  y: btntop-50+(ind/6*(btnh+btnspn)),
                                  width:btnw, height:btnh)
//            button.imagePosition = .imageOnly
//            button.setBoundsSize(CGSize.zero)
//            button.setButtonType(UIButtonType.momentaryLight)
//            button.imageScaling = .scaleNone
//            button.bezelStyle = .texturedSquare
            
            self.gameView.addSubview(button)
        }
        
        GameViewController.ins = self
        
        let click = UIImageView(frame:CGRect(x:posx0+10, y:btntop-50-3*btnh, width:40, height:40))
        click.image = UIImage(named:"")
        click.isUserInteractionEnabled = true
        self.gameView.addSubview(click)
        
        
        resetMagic(random: true)
    }
    
    func resetMagic(random rand: Bool) {
        if(rand) {
            var roatcmd = [Int]()
            for _ in 0 ... self.level {
                roatcmd.append(Int(arc4random())%18)
            }
            rotateMagic(boxs, roatcmd, false)
        }
        else {
            for i in 0 ... 26 {
                boxs[i].rotation = SCNVector4Make(0, 0, 0, 0)
            }
        }
        rotateTic = NSDate();
    }
    @objc func doRotate(_ sender: UIButton) {
        rotateMagic(boxs, [turnMap[sender.tag]!], true)
    }
    func updateRotateFace() {
        let m =  (self.gameView!.pointOfView?.transform)!
        let r = GLKMatrix4MultiplyVector3(SCNMatrix4ToGLKMatrix4(m), SCNVector3ToGLKVector3( SCNVector3Make(1, 0, 0)) )
        print("rotate: \(r.x) \(r.y) \(r.z)")
    }
    func doTrans(_ sender: UIView) {
        
        transShow()
        
        if topShow == 0 {
            sender.layer.backgroundColor = UIColor.lightGray.cgColor
        }
        else {
            sender.layer.backgroundColor = UIColor.black.cgColor
        }
    }
}

extension UIImageView {
    
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        GameViewController.ins.topShow = 0
        GameViewController.ins.doTrans(self)
        GameViewController.ins.gameView!.allowsCameraControl = false       
    }
    
    
    open override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        GameViewController.ins.topShow = 1
        GameViewController.ins.doTrans(self)
        GameViewController.ins.gameView!.allowsCameraControl = true       
    }
}

extension UIImage {
    public func maskWithColor(color: UIColor) -> UIImage {
        
        UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
        let context = UIGraphicsGetCurrentContext()!
        
        let rect = CGRect(origin: CGPoint.zero, size: size)
        
        color.setFill()
        
        context.fill(rect)
        context.setBlendMode(.copy)
        self.draw(in: rect)
        
        
        
        let resultImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return resultImage
    }
}

