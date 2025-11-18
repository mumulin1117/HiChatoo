//
//  HiSINNAMIArtMotionHUD.swift
//  HiSinCtohoo
//
//  Created by  on 2025/11/18.
//

import UIKit


final class HiSINNAMIArtMotionHUD {

    // MARK: - Singleton
    static let HiSINNAMISoloExhibit = HiSINNAMIArtMotionHUD()
    private init() {}

    // Container references
    private var HiSINNAMICanvasLayer: UIView?
    private var HiSINNAMIScheduleFade: Timer?

    // MARK: - Show Loading
    func HiSINNAMIInvokeLoadingAura() {
        DispatchQueue.main.async {
            guard let window = UIApplication.shared.connectedScenes
                .compactMap({ ($0 as? UIWindowScene)?.windows.first })
                .first(where: { $0.isKeyWindow }) else {
          
                    return
            }

            let HiSINNAMIcanvas = UIView(frame: window.bounds)
            HiSINNAMIcanvas.backgroundColor = UIColor(white: 0, alpha: 0.3)

            let orbHiSINNAMI = UIView()
        
            orbHiSINNAMI.layer.cornerRadius = 12
            orbHiSINNAMI.translatesAutoresizingMaskIntoConstraints = false

            let spinner = UIActivityIndicatorView(style: .large)
            spinner.color = .white
            spinner.startAnimating()
            spinner.hidesWhenStopped = true
            spinner.translatesAutoresizingMaskIntoConstraints = false

            orbHiSINNAMI.addSubview(spinner)
            HiSINNAMIcanvas.addSubview(orbHiSINNAMI)
            window.addSubview(HiSINNAMIcanvas)

            NSLayoutConstraint.activate([
                orbHiSINNAMI.centerXAnchor.constraint(equalTo: HiSINNAMIcanvas.centerXAnchor),
                orbHiSINNAMI.centerYAnchor.constraint(equalTo: HiSINNAMIcanvas.centerYAnchor),
                orbHiSINNAMI.widthAnchor.constraint(equalToConstant: 100),
                orbHiSINNAMI.heightAnchor.constraint(equalToConstant: 100),

                spinner.widthAnchor.constraint(equalToConstant: 55),
                spinner.heightAnchor.constraint(equalToConstant: 55),
                spinner.centerXAnchor.constraint(equalTo: orbHiSINNAMI.centerXAnchor),
                spinner.centerYAnchor.constraint(equalTo: orbHiSINNAMI.centerYAnchor)
            ])

            self.HiSINNAMICanvasLayer = HiSINNAMIcanvas
        }
    }


    // MARK: - Info Text
    func HiSINNAMIEmitTransientNote(_ HiSINNAMIText: String,
                                    duration: TimeInterval = 1.5) {
        HiSINNAMIShapeTextPanel(
            HiSINNAMIText: HiSINNAMIText,
            HiSINNAMIIconName: nil,
                    HiSINNAMIduration: duration
        )
    }

    // MARK: - Success
    func HiSINNAMICastSuccessGlyph(_ HiSINNAMIText: String,
                                   duration: TimeInterval = 1.5) {
        HiSINNAMIShapeTextPanel(
            HiSINNAMIText: HiSINNAMIText,
            HiSINNAMIIconName: "checkmark.circle.fill",
                    HiSINNAMIduration: duration
        )
    }

   
    // MARK: - Dismiss
    func HiSINNAMIDismissEtherealTrace() {
        DispatchQueue.main.async {
            self.HiSINNAMIScheduleFade?.invalidate()
            self.HiSINNAMIScheduleFade = nil

            self.HiSINNAMICanvasLayer?.removeFromSuperview()
            self.HiSINNAMICanvasLayer = nil
        }
    }

    // MARK: - Private text HUD
    private func HiSINNAMIShapeTextPanel(
        HiSINNAMIText: String,
        HiSINNAMIIconName: String?,
                HiSINNAMIduration: TimeInterval
    ) {
        DispatchQueue.main.async {

//            self.HiSINNAMIDismissEtherealTrace()

            guard let HiSINNAMIPrimeWindow = UIApplication.shared.windows.first else { return }

            let HiSINNAMICanvas = UIView(frame: HiSINNAMIPrimeWindow.bounds)
            HiSINNAMICanvas.backgroundColor = .clear

            let HiSINNAMIOrb = UIView()
            HiSINNAMIOrb.backgroundColor = UIColor(white: 0.1, alpha: 0.9)
            HiSINNAMIOrb.layer.cornerRadius = 12
            HiSINNAMIOrb.translatesAutoresizingMaskIntoConstraints = false

            let HiSINNAMIColumn = UIStackView()
            HiSINNAMIColumn.axis = .vertical
            HiSINNAMIColumn.alignment = .center
            HiSINNAMIColumn.spacing = 8
            HiSINNAMIColumn.translatesAutoresizingMaskIntoConstraints = false

            // icon
            if let HiSINNAMIIcon = HiSINNAMIIconName {
                let HiSINNAMIIconView = UIImageView(image: UIImage(systemName: HiSINNAMIIcon))
                HiSINNAMIIconView.tintColor = .white
                HiSINNAMIIconView.contentMode = .scaleAspectFit
                HiSINNAMIIconView.translatesAutoresizingMaskIntoConstraints = false
                HiSINNAMIIconView.widthAnchor.constraint(equalToConstant: 36).isActive = true
                HiSINNAMIIconView.heightAnchor.constraint(equalToConstant: 36).isActive = true
                HiSINNAMIColumn.addArrangedSubview(HiSINNAMIIconView)
            }

            // text
            let HiSINNAMILabel = UILabel()
            HiSINNAMILabel.text = HiSINNAMIText
            HiSINNAMILabel.numberOfLines = 0
            HiSINNAMILabel.textColor = .white
            HiSINNAMILabel.font = .systemFont(ofSize: 15)
            HiSINNAMILabel.textAlignment = .center
            HiSINNAMIColumn.addArrangedSubview(HiSINNAMILabel)

            HiSINNAMIOrb.addSubview(HiSINNAMIColumn)
            HiSINNAMICanvas.addSubview(HiSINNAMIOrb)
            HiSINNAMIPrimeWindow.addSubview(HiSINNAMICanvas)

            NSLayoutConstraint.activate([
                HiSINNAMIOrb.centerXAnchor.constraint(equalTo: HiSINNAMICanvas.centerXAnchor),
                HiSINNAMIOrb.centerYAnchor.constraint(equalTo: HiSINNAMICanvas.centerYAnchor),
                HiSINNAMIOrb.widthAnchor.constraint(lessThanOrEqualToConstant: 240),

                HiSINNAMIColumn.topAnchor.constraint(equalTo: HiSINNAMIOrb.topAnchor, constant: 20),
                HiSINNAMIColumn.bottomAnchor.constraint(equalTo: HiSINNAMIOrb.bottomAnchor, constant: -20),
                HiSINNAMIColumn.leadingAnchor.constraint(equalTo: HiSINNAMIOrb.leadingAnchor, constant: 20),
                HiSINNAMIColumn.trailingAnchor.constraint(equalTo: HiSINNAMIOrb.trailingAnchor, constant: -20)
            ])

            self.HiSINNAMICanvasLayer = HiSINNAMICanvas

            self.HiSINNAMIScheduleFade = Timer.scheduledTimer(withTimeInterval:         HiSINNAMIduration, repeats: false) { _ in
                self.HiSINNAMIDismissEtherealTrace()
            }
        }
    }
}
